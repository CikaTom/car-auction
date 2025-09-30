import 'package:car_auction/pages/auctions/widgets/auction_tile.dart';
import 'package:car_auction/pages/auctions/widgets/bloc_selector.dart';
import 'package:flutter/material.dart';

class AuctionPageAuctionsList extends StatelessWidget {
  const AuctionPageAuctionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return AuctionsPageBlocSelector(
      selector: (state) => state.auctions,
      builder: (context, auctions) {
        return ListView.builder(
          itemCount: auctions.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return AuctionsPageAuctionTile(
              auction: auctions[index],
              index: index,
            );
          },
        );
      },
    );
  }
}
