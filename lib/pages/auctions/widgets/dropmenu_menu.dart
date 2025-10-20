import 'package:car_auction/pages/auctions/widgets/actions_dropdown_menu.dart';
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
        ActionsDropdownMenu(),
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
