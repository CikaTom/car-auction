import 'package:car_auction/widgets/button.dart';
import 'package:flutter/material.dart';

class AuctionsPageDropDownMenu extends StatelessWidget {
  static void _onSellCarTapped() {}

  const AuctionsPageDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Dropdown menu'),
        Spacer(),
        SizedBox(width: 16.0),
        const Button(
          onTap: _onSellCarTapped,
          text: 'Sell a car',
        ),
      ],
    );
  }
}
