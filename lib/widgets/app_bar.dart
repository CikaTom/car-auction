import 'package:car_auction/widgets/comunnities_icon.dart';
import 'package:car_auction/widgets/menu_icon.dart';
import 'package:car_auction/widgets/search_icon.dart';
import 'package:car_auction/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          const Text('Cars Auction'),
          Spacer(),
          SizedBox(width: 8.0),
          const SignUpButton(),
          SizedBox(width: 8.0),
          const SearchIcon(),
          SizedBox(width: 8.0),
          const CommunitiesIcon(),
          SizedBox(width: 8.0),
          const MenuIcon(),
        ],
      ),
    );
  }
}
