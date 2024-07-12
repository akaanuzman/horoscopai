// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.text,
    required this.icon,
    super.key,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.horizontalMedium,
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: icon,
          suffixIconColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
