import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SAPhoneFormate extends StatelessWidget {
  const SAPhoneFormate(
      {super.key,
      required this.label,
      required this.inputType,
      this.formatters});

  final String label;
  final TextInputType inputType;
  final List<TextInputFormatter>? formatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      // showCursor: true,
      // readOnly: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: label,

      ),
      inputFormatters: formatters,
    );
  }
}
