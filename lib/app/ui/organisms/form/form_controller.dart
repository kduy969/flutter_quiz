import 'package:flutter/material.dart';

class Field<T> {
  final String? Function(T? value, Map<String, dynamic> formData)? validator;
  final bool focusable;
  final String label;
  final bool wrapInRepaintBoundary;
  late final bool isTextFormField;
  Field({
    this.validator,
    this.focusable = true,
    isTextFormField = true,
    this.wrapInRepaintBoundary = true,
    required this.label,
  }) {
    if (T == String) {
      // isTextFormField only applicable for String Field
      this.isTextFormField = isTextFormField;
    } else {
      this.isTextFormField = false;
    }
  }

  T? value;
  String? key;
  String? previousKey;

  late final GlobalKey<FormFieldState> globalKey;
  late final Injectable<T> injectable;
  late final FormController formController;

  void attachForm(FormController fc) {
    formController = fc;
    globalKey = GlobalKey<FormFieldState>(debugLabel: key);
    injectable = Injectable<T>(
      controller: TextEditingController(text: ''),
      validator: validator == null
          ? null
          : (value) {
              return validator!(value, formController.getData());
            },
      focusNode: focusable ? FocusNode() : null,
      onSubmit: (value) => formController.onFieldSubmit(value, this),
      onChange: isTextFormField
          ? updateValue // TextFormField already handled builder internally, use updateValueAndNotifyBuilder will lead to infinite loop
          : updateValueAndNotifyBuilder,
    );
  }

  // update value and also notify FormFieldState to rebuild
  void updateValueAndNotifyBuilder(T? value) {
    //logger.d(["updateValueAndNotifyBuilder", T, value]);
    this.value = value;
    if (isTextFormField) {
      // use TextEditController to control TextFormField
      injectable.controller!.text = value as String;
    } else {
      // use FormState to control FormField
      if (globalKey.currentState?.mounted ?? false) {
        globalKey.currentState?.didChange(value);
      }
    }
  }

  // only update internal value
  void updateValue(T? value) {
    //logger.d(["updateValue", T, value]);
    this.value = value;
  }

  dispose() {
    injectable.focusNode?.dispose();
    injectable.controller?.dispose();
  }
}

// This object contain data will be used to inject to FormField widget
class Injectable<T> {
  final FormFieldValidator? validator;

  // only required for
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(dynamic)? onSubmit;
  final void Function(T) onChange;

  Injectable(
      {this.validator,
      this.controller,
      required this.onChange,
      this.focusNode,
      this.onSubmit});
}

class FormController {
  Map<String, Field> fieldMap = <String, Field>{};

  bool autoFocus = false;

  FormController(this.fieldMap, {this.autoFocus = false}) {
    String? previousKey;
    fieldMap.forEach((fieldKey, field) {
      field.attachForm(this);
      field.key = fieldKey;
      field.previousKey = previousKey;
      previousKey = fieldKey;
    });
  }

  onFieldSubmit(value, Field field) {
    try {
      Field nextField = fieldMap.values
          .firstWhere((f) => f.previousKey == field.key && f.focusable);
      nextField.injectable.focusNode?.requestFocus();
    } catch (e) {
      // final field ? -> close keyboard
      // ????
    }
    // find next field
    // focus
  }

  Map<String, dynamic> getData() {
    return fieldMap.map((key, field) {
      return MapEntry(key, field.value);
    });
  }

  dispose() {
    fieldMap.forEach((fieldKey, field) {
      field.dispose();
    });
  }
}
