import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CAPopover extends StatefulWidget {
  const CAPopover({
    super.key,
    required this.child,
    this.isOpen = false,
    required this.overlay,
  });

  final bool isOpen;
  final WidgetBuilder overlay;
  final Widget child;

  @override
  State<CAPopover> createState() => _PopoverPageState();
}

class _PopoverPageState extends State<CAPopover> {
  late final popoverController = ShadPopoverController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.isOpen) {
        popoverController.show();
      }
    });
  }

  @override
  void didUpdateWidget(covariant CAPopover oldWidget) {
    if (widget.isOpen != oldWidget.isOpen) {
      if (widget.isOpen) {
        popoverController.show();
      } else {
        popoverController.hide();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    popoverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShadPopover(
        controller: popoverController,
        popover: widget.overlay,
        child: widget.child,
      ),
    );
  }
}
