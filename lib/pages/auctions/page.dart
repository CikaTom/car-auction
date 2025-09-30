import 'package:car_auction/pages/auctions/widgets/auctions_list.dart';
import 'package:car_auction/pages/auctions/widgets/dropmenu_menu.dart';
import 'package:car_auction/pages/auctions/widgets/filters.dart';
import 'package:car_auction/pages/auctions/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class AuctionsPage extends StatelessWidget {
  const AuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuctionsPageDropDownMenu(),
        Expanded(
          child: DefaultTabController(
            length: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AuctionsPageFilter(),
                  AuctionPageTabBar(
                    tabs: [
                      'Ending soon',
                      'Newly listed',
                      'No reserve',
                      'Lowest mileage',
                      'Closest to me',
                    ],
                    selectedTab: 'Ending soon',
                    onTabSelected: (tab) {},
                  ),
                  const AuctionPageAuctionsList(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
