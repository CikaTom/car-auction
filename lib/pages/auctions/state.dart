import 'package:dart_mappable/dart_mappable.dart';

part 'state.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.equals | GenerateMethods.copy)
class AuctionPageState with AuctionPageStateMappable {
  AuctionPageState({
    required this.isLoading,
    required this.selectedTab,
    required this.auctions,
  });

  final bool isLoading;
  final String selectedTab;
  final List<AuctionsPageAuction> auctions;
}

@MappableClass(generateMethods: GenerateMethods.equals | GenerateMethods.copy)
class AuctionsPageAuction with AuctionsPageAuctionMappable {
  AuctionsPageAuction({
    required this.imageUrl,
    required this.remainingTime,
    required this.remainingTimeText,
    required this.bidAmount,
    required this.title,
    required this.subtitle,
    required this.location,
    required this.favored,
    required this.reserved,
    required this.inspected,
  });

  final String imageUrl;

  // Remaining time in seconds
  final int remainingTime;
  final String remainingTimeText;
  final String bidAmount;
  final String title;
  final String subtitle;
  final String location;
  final bool favored;
  final bool reserved;
  final bool inspected;
}
