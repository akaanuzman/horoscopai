// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:horoscopai/features/auth/login/controller/passw_text_field_controller.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class PasswTextField extends StatelessWidget {
  const PasswTextField({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    final authController = context.watch<AuthController>();

    return Padding(
      padding: context.padding.horizontalMedium,
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: IconButton(
            onPressed: authController.changeShowPassword,
            icon: Icon(
              authController.showPassword
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
          suffixIconColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
