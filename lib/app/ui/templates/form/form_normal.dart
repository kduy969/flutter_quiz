import 'package:flutter/material.dart';
import 'package:quiz/log/index.dart';
import '../../organisms/form/styles.dart';

class FormNormal extends StatefulWidget {
  const FormNormal({
    Key? key,
  }) : super(key: key);

  @override
  State<FormNormal> createState() => _FormNormalState();
}

class _FormNormalState extends State<FormNormal> {
  final GlobalKey<FormState> _formKey = GlobalKey(debugLabel: 'form');

  final userNameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  late FocusNode userFocusNode;
  late FocusNode passwordFocusNode;

  @override
  void initState() {
    super.initState();
    userFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    userFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logger.d(MediaQuery.of(context).viewInsets.bottom);
    //logger.d(MediaQuery.of(context).viewInsets);
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            onFieldSubmitted: (value) => passwordFocusNode.requestFocus(),
            focusNode: userFocusNode,
            controller: userNameController,
            decoration: InputDecoration(hintText: 'Enter your username'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Username required';
              }
              return null;
            },
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: const Text(
              'Password',
              style: Styles.label,
            ),
          ),
          TextFormField(
            focusNode: passwordFocusNode,
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password required';
              }
              return null;
            },
            decoration: InputDecoration(hintText: 'Enter your password'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: ElevatedButton(
              onPressed: () {
                logger.d({
                  'password': passwordController.text,
                  'userName': userNameController.text,
                });
              },
              child: const Text(
                'Log In',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
