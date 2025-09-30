import 'package:car_auction/pages/auctions/cubit.dart';
import 'package:car_auction/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_selector.dart';

class AuctionPageTabBar extends StatelessWidget {
  const AuctionPageTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuctionsPageBlocSelector(
      selector: (state) => state.selectedTab,
      builder: (context, selectedTab) {
        return CATabBar(
          tabs: const [
            'Ending soon',
            'Newly listed',
            'No reserve',
            'Lowest mileage',
            'Closest to me',
          ],
          selectedTab: selectedTab,
          onTabSelected: (tab) => context.read<AuctionsPageCubit>().onTabSelected(tab),
        );
      },
    );
  }
}
