import 'package:car_auction/colors.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({super.key, required this.text, required this.color, required this.textColor});

  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style: TextStyle(fontSize: 10, color: textColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class NotReservedBadge extends StatelessWidget {
  const NotReservedBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Badge(
      text: 'No reserve',
      textColor: CAColors.white,
      color: CAColors.blue,
    );
  }
}

class InspectedBadge extends StatelessWidget {
  const InspectedBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Badge(
      text: 'Inspected',
      textColor: CAColors.black,
      color: CAColors.white,
    );
  }
}
