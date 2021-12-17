import 'package:flutter/material.dart';

import 'styles.dart';

class FieldLabel extends StatelessWidget {
  final String label;
  const FieldLabel(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Styles.label,
    );
  }
}
