import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: context.padding.horizontalMedium,
        child: Text(text),
      ),
    );
  }
}
