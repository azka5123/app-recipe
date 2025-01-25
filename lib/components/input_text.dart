import 'package:flutter/material.dart';
import '../theme/app_typography.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const InputText({Key? key, required this.label, required this.hint, this.isPassword = false}) : super(key: key);

  @override

  Widget build(BuildContext context){
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTypography.p2(),
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
      ),
      obscureText: isPassword,
    );
  }
}