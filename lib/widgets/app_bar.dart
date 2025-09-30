import 'package:car_auction/widgets/comunnities_icon.dart';
import 'package:car_auction/widgets/menu_icon.dart';
import 'package:car_auction/widgets/search_icon.dart';
import 'package:car_auction/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Text('Cars Auction'),
          Spacer(),
          SizedBox(width: 8),
          SignUpButton(),
          SizedBox(width: 8),
          SearchIcon(),
          SizedBox(width: 8),
          CommunitiesIcon(),
          SizedBox(width: 8),
          MenuIcon(),
        ],
      ),
    );
  }
}
