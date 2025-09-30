import 'package:car_auction/colors.dart';
import 'package:flutter/material.dart';

class AuctionPageTabBar extends StatelessWidget {
  const AuctionPageTabBar({
    super.key,
    required this.tabs,
    required this.selectedTab,
    required this.onTabSelected,
  });

  final List<String> tabs;
  final String selectedTab;
  final ValueChanged<String> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Row(
          children: [
            for (var tab in tabs) _buildTab(tab),
          ],
        ),
      ),
    );
  }

  Padding _buildTab(String tab) {
    final isSelected = selectedTab == tab;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: InkWell(
        onTap: () => onTabSelected(tab),

        child: Text(
          tab,
          style: TextStyle(
            color: isSelected ? null : CAColors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            decoration: isSelected ? TextDecoration.underline : TextDecoration.none,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}
