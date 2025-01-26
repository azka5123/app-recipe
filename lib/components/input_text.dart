import 'package:flutter/material.dart';
import '../theme/app_typography.dart';

class InputText extends StatelessWidget {
  final String? label;
  final String hint;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  const InputText(
      {Key? key,
      this.label,
      required this.hint,
      this.isPassword = false,
      this.prefixIcon,
      this.suffixIcon,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon != null ? Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: prefixIcon,
        ) : null,
        suffixIcon: suffixIcon != null ? Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: suffixIcon,
        ) : null,
        labelStyle: AppTypography.p2(),
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
      ),
      obscureText: isPassword,
      controller: controller,
      style: AppTypography.p2(),
    );
  }
}
