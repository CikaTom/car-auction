import 'package:flutter/material.dart';
import '../colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor = Colors.black,
    this.borderRadius = 16.0,
  });

  final VoidCallback onTap;
  final String text;
  final Color? textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final borderRadius2 = BorderRadius.circular(borderRadius);

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CAColors.buttonColor,
          borderRadius: borderRadius2,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
