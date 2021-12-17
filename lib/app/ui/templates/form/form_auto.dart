import 'package:flutter/material.dart';
import 'package:quiz/app/ui/atoms/random_color_box.dart';
import 'package:quiz/app/ui/organisms/form/field_builder.dart';
import 'package:quiz/app/ui/organisms/form/form_controller.dart';
import 'package:quiz/app/ui/organisms/form/form_group.dart';
import 'package:quiz/log/index.dart';

class FormAuto extends StatefulWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey(debugLabel: 'form');

  FormAuto({
    Key? key,
  }) : super(key: key);

  @override
  State<FormAuto> createState() => _FormAutoState();
}

class _FormAutoState extends State<FormAuto> {
  late final GlobalKey<FormFieldState> _toggleKey;
  late final FormController _formController;

  @override
  void initState() {
    logger.d(["INIT STATE"]);
    _toggleKey = GlobalKey(debugLabel: 'toggle');
    _formController = FormController({
      "active": Field<bool>(
        focusable: false,
        label: 'Active',
      ),
      "userName": Field<String>(
        label: 'Username',
        validator: (value, formData) {
          if ((value ?? '').isEmpty) {
            return 'Username required';
          }
          return null;
        },
      ),
      "password": Field<String>(
        label: 'Password',
        validator: (value, formData) {
          if ((value ?? '').isEmpty) {
            return 'Password required';
          }
          return null;
        },
      ),
      "confirmPassword": Field<String>(
        label: 'Confirm password',
        validator: (value, formData) {
          if ((formData['password'] ?? '').isEmpty) {
            return null;
          }
          if ((value ?? '').isEmpty) {
            return 'Confirm password required';
          }
          if (value != formData['password']) {
            return 'Confirm and password mismatch';
          }
          return null;
        },
      ),
    });
    super.initState();
  }

  bool showToggle = true;
  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logger.d(["REBUILD"]);
    final fMap = _formController.fieldMap;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FieldBuilder<bool>.withGroup(
          field: fMap['active']!,
          builder: (field, fieldState, i) {
            return Switch(value: field.value ?? false, onChanged: i.onChanged);
          },
        ),
        TextFieldBuilder.auto(
          field: fMap['userName']!,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextFieldBuilder.withGroup(
            field: fMap['password']!,
            builder: (field, i) => TextFormField(
              obscureText: true,
              key: i.key,
              validator: i.validator,
              onChanged: i.onChanged,
              onFieldSubmitted: i.onSubmit,
              focusNode: i.focusNode,
              controller: i.controller,
              // add any properties you need here
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextFieldBuilder(
            field: fMap['confirmPassword']!,
            builder: (field, i) => FormGroup(
              label: field.label,
              child: TextFormField(
                key: i.key,
                obscureText: true,
                validator: i.validator,
                onChanged: i.onChanged,
                onFieldSubmitted: i.onSubmit,
                focusNode: i.focusNode,
                controller: i.controller,
                // add any properties you need here
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 40,
        //   ),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       setState(() {
        //         showToggle = !showToggle;
        //       });
        //     },
        //     child: const Text(
        //       'Toggle switch',
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: ElevatedButton(
            onPressed: () {
              //FormAuto._formKey.currentState?.save();
              FormAuto._formKey.currentState?.validate();
              logger.d(_formController.getData());
              // logger.d({
              //   'password': passwordController.text,
              //   'userName': userNameController.text,
              // });
            },
            child: const Text(
              'Log In',
            ),
          ),
        ),
      ],
    );
  }
}
