import 'package:car_auction/colors.dart';
import 'package:flutter/material.dart';

class CATabBar extends StatelessWidget {
  const CATabBar({
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
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            for (var i = 0; i < tabs.length; i++) _buildTab(tabs[i], i == 0, i == tabs.length - 1),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String tab, bool isFirst, bool isLast) {
    final isSelected = selectedTab == tab;

    return InkWell(
      onTap: () => onTabSelected(tab),
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: Padding(
        padding: EdgeInsets.only(left: isFirst ? 4 : 8, right: isLast ? 4 : 8, bottom: 8, top: 8),
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
