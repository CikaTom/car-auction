import 'package:car_auction/colors.dart';
import 'package:car_auction/widgets/popover.dart';
import 'package:flutter/material.dart';

class ActionsDropdownMenu extends StatefulWidget {
  const ActionsDropdownMenu({super.key});

  @override
  State<ActionsDropdownMenu> createState() => _ActionsDropdownMenuState();
}

class _ActionsDropdownMenuState extends State<ActionsDropdownMenu> {
  var isOpen = false;

  void hide() {
    setState(() {
      isOpen = false;
    });
  }

  void toggle() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CAPopover(
      isOpen: isOpen,
      overlay: (context) => Material(
        color: Colors.black,
        child: DefaultTextStyle(
          style: const TextStyle(color: CAColors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: hide,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Action 1'),
                ),
              ),
              InkWell(
                onTap: hide,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Action 2'),
                ),
              ),
              InkWell(
                onTap: hide,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Action 3'),
                ),
              ),
            ],
          ),
        ),
      ),
      child: InkWell(
        onTap: toggle,
        child: const Row(
          children: [
            Text(
              'Actions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
