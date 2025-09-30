import 'package:car_auction/colors.dart';
import 'package:car_auction/pages/auctions/cubit.dart';
import 'package:car_auction/pages/auctions/state.dart';
import 'package:car_auction/widgets/badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuctionsPageAuctionTile extends StatelessWidget {
  const AuctionsPageAuctionTile({
    super.key,
    required this.auction,
    required this.index,
  });

  final AuctionsPageAuction auction;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _Image(
                imageUrl: auction.imageUrl,
                remainingTime: auction.remainingTime,
                remainingTimeText: auction.remainingTimeText,
                bidAmount: auction.bidAmount,
              ),
            ),
            const SizedBox(height: 4),
            _Title(
              title: auction.title,
              index: index,
              favored: auction.favored,
            ),
            const SizedBox(height: 4),
            _Subtitle(
              reserved: auction.reserved,
              inspected: auction.inspected,
              subtitle: auction.subtitle,
            ),
            const SizedBox(height: 2),
            Text(
              auction.location,
              style: const TextStyle(fontSize: 11, color: CAColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({
    required this.subtitle,
    required this.reserved,
    required this.inspected,
  });

  final String subtitle;
  final bool reserved;
  final bool inspected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!reserved)
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: NotReservedBadge(),
          ),

        if (inspected)
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: InspectedBadge(),
          ),

        Expanded(
          child: Text(
            subtitle,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.imageUrl,
    required this.remainingTime,
    required this.remainingTimeText,
    required this.bidAmount,
  });

  final String imageUrl;

  final int remainingTime;
  final String remainingTimeText;
  final String bidAmount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: 8,
          left: 8,

          child: CountdownAndWidth(
            remainingTime: remainingTime,
            remainingTimeText: remainingTimeText,
            bidAmount: bidAmount,
          ),
        ),
      ],
    );
  }
}

class CountdownAndWidth extends StatelessWidget {
  const CountdownAndWidth({
    super.key,
    required this.remainingTime,
    required this.remainingTimeText,
    required this.bidAmount,
  });

  final int remainingTime;
  final String remainingTimeText;
  final String bidAmount;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: CAColors.grey2, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.timer_outlined,
              size: 16,
              color: CAColors.grey,
            ),
            const SizedBox(width: 4),
            _Countdown(remainingTime: remainingTime, remainingTimeText: remainingTimeText),
            const SizedBox(width: 8),
            const Icon(Icons.monetization_on_outlined, size: 16, color: CAColors.grey),
            const SizedBox(width: 4),
            _Bid(bidAmount: bidAmount),
          ],
        ),
      ),
    );
  }
}

class _Countdown extends StatelessWidget {
  const _Countdown({required this.remainingTime, required this.remainingTimeText});

  final int remainingTime;
  final String remainingTimeText;

  @override
  Widget build(BuildContext context) {
    return Text(remainingTimeText);
  }
}

class _Bid extends StatelessWidget {
  const _Bid({required this.bidAmount});

  final String bidAmount;

  @override
  Widget build(BuildContext context) {
    return Text('\$$bidAmount');
  }
}

class _Title extends StatelessWidget {
  const _Title({
    required this.title,
    required this.index,
    required this.favored,
  });

  final String title;
  final int index;
  final bool favored;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            context.read<AuctionsPageCubit>().toggleFavorite(index);
          },
          child: Icon(
            favored ? Icons.star : Icons.star_border_outlined,
            size: 20,
          ),
        ),
      ],
    );
  }
}
