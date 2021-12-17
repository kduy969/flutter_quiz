import 'package:flutter/material.dart';

import 'field_label.dart';

class FormGroup extends StatelessWidget {
  final Widget child;
  final String label;
  const FormGroup({Key? key, required this.label, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FieldLabel(label),
        child,
      ],
    );
  }
}
