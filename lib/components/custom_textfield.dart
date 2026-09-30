import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  // kita list variabel2 yang diperlukan
  final TextEditingController txtController;
  final String myHint;
  final bool isNumberOnly;

  const CustomTextfield({
    super.key,
    required this.txtController,
    required this.myHint,
    required this.isNumberOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: isNumberOnly ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumberOnly
          ? [FilteringTextInputFormatter.digitsOnly]
          : [],
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hint: Text(myHint),
      ),
    );
  }
}