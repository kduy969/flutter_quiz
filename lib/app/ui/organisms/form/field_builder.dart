import 'package:flutter/material.dart';
import 'form_controller.dart';
import 'form_group.dart';

class FieldInjectList<T> {
  void Function(T?) onChanged;
  void Function(dynamic)? onSubmit;
  FocusNode? focusNode;

  FieldInjectList(
    this.onChanged,
    this.onSubmit,
    this.focusNode,
  );
}

class FieldBuilder<T> extends StatelessWidget {
  final Widget Function(
    Field field,
    FormFieldState<T?> fieldState,
    FieldInjectList<T> injectList,
  ) builder;

  final Field field;
  final bool withGroup;
  const FieldBuilder({Key? key, required this.field, required this.builder})
      : withGroup = false,
        super(key: key);

  const FieldBuilder.withGroup(
      {Key? key, required this.field, required this.builder})
      : withGroup = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final injectList = FieldInjectList<T>(
      field.injectable.onChange,
      field.injectable.onSubmit,
      field.injectable.focusNode,
    );

    Widget result = FormField<T?>(
      //initialValue: fMap["active"].value,
      key: field.globalKey,
      initialValue: field.value,
      validator: field.injectable.validator,
      builder: (fieldState) {
        return builder(
          field,
          fieldState,
          injectList,
        );
      },
    );

    if (withGroup) {
      result = FormGroup(
        label: field.label,
        child: result,
      );
    }

    if (field.wrapInRepaintBoundary) {
      result = RepaintBoundary(
        child: result,
      );
    }
    return result;
  }
}

class TextInjectList {
  GlobalKey<FormFieldState> key;
  FormFieldValidator? validator;
  void Function(String?) onChanged;
  void Function(dynamic)? onSubmit;
  FocusNode? focusNode;
  TextEditingController? controller;

  TextInjectList(
    this.key,
    this.validator,
    this.onChanged,
    this.onSubmit,
    this.focusNode,
    this.controller,
  );
}

class TextFieldBuilder extends StatelessWidget {
  final Widget Function(
    Field field,
    // you must inject everything provided in this list to your widget =))
    TextInjectList injectList,
  )? builder;
  final Field field;
  final bool withGroup;

  const TextFieldBuilder({Key? key, required this.field, required this.builder})
      : withGroup = false,
        super(key: key);

  const TextFieldBuilder.auto({Key? key, required this.field})
      : withGroup = true,
        builder = null,
        super(key: key);

  const TextFieldBuilder.withGroup(
      {Key? key, required this.field, required this.builder})
      : withGroup = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final i = TextInjectList(
      field.globalKey,
      field.injectable.validator,
      field.injectable.onChange,
      field.injectable.onSubmit,
      field.injectable.focusNode,
      field.injectable.controller,
    );

    Widget result = builder == null
        ? TextFormField(
            key: i.key,
            validator: i.validator,
            onChanged: i.onChanged,
            onFieldSubmitted: i.onSubmit,
            focusNode: i.focusNode,
            controller: i.controller,
            // add any properties you need here
          )
        : builder!(field, i);

    if (withGroup) {
      result = FormGroup(
        label: field.label,
        child: result,
      );
    }

    if (field.wrapInRepaintBoundary) {
      result = RepaintBoundary(
        child: result,
      );
    }

    return result;
  }
}
