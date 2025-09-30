import 'package:car_auction/pages/auctions/widgets/auction_tile.dart';
import 'package:flutter/material.dart';

class AuctionPageAuctionsList extends StatelessWidget {
  const AuctionPageAuctionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const AuctionsPageAuctionTile();
      },
    );
  }
}
