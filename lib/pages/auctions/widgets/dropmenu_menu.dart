import 'package:car_auction/widgets/button.dart';
import 'package:flutter/material.dart';

class AuctionsPageDropDownMenu extends StatelessWidget {
  const AuctionsPageDropDownMenu({super.key});
  static void _onSellCarTapped() {}

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Dropdown menu'),
        Spacer(),
        SizedBox(width: 16),
        Button(
          onTap: _onSellCarTapped,
          text: 'Sell a car',
        ),
      ],
    );
  }
}
