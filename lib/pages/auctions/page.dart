import 'package:car_auction/pages/auctions/cubit.dart';
import 'package:car_auction/pages/auctions/widgets/auctions_list.dart';
import 'package:car_auction/pages/auctions/widgets/dropmenu_menu.dart';
import 'package:car_auction/pages/auctions/widgets/filters.dart';
import 'package:car_auction/pages/auctions/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuctionsPage extends StatelessWidget {
  const AuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => AuctionsPageCubit(),
      child: const AuctionsPageView(),
    );
  }
}

class AuctionsPageView extends StatelessWidget {
  const AuctionsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuctionsPageDropDownMenu(),
        Expanded(
          child: DefaultTabController(
            length: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AuctionsPageFilter(),
                  AuctionPageTabBar(),
                  AuctionPageAuctionsList(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
