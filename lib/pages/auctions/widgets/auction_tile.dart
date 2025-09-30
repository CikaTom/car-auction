import 'package:car_auction/colors.dart';
import 'package:flutter/material.dart';

class AuctionsPageAuctionTile extends StatelessWidget {
  const AuctionsPageAuctionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: const _Image()),
            const SizedBox(height: 4),
            _Title(),
            const SizedBox(height: 4),
            _Subtitle(),
            const SizedBox(height: 2),
            Text(
              'Methuen, MA 01844',
              style: TextStyle(fontSize: 11, color: CAColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Badge(
          color: CAColors.blue,
          text: 'No reserve',
        ),
        SizedBox(width: 8),
        Text(
          '6-Speed Manual, Touring Pack, Mostly Unmodified',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),

          child: Image.network(
            'https://www.topgear.com/sites/default/files/news-listicle/image/2021/12/18.%20Koenigsegg%20Jesko.jpg?w=827&h=465',
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          bottom: 8,
          left: 8,
          // right: 0,
          child: const CountdownAndWidth(),
        ),
      ],
    );
  }
}

class CountdownAndWidth extends StatelessWidget {
  const CountdownAndWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: CAColors.grey2, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.timer_outlined,
              size: 16,
              color: CAColors.grey,
            ),
            SizedBox(width: 4),
            Countdown(),
            SizedBox(width: 8),
            Icon(Icons.monetization_on_outlined, size: 16, color: CAColors.grey),
            SizedBox(width: 4),
            Bid(),
          ],
        ),
      ),
    );
  }
}

class Countdown extends StatelessWidget {
  const Countdown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('15:08:15');
  }
}

class Bid extends StatelessWidget {
  const Bid({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('\$93,000');
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '2015 Alfa Romeo 4C',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.star_border_outlined,
            size: 18,
          ),
        ),
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Text(
          text,
          style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
