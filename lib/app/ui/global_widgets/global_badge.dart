import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class GlobalBadge extends StatelessWidget {
  final bool showBadge;
  final Widget child;
  final GestureTapCallback yourAction;

  const GlobalBadge({
    super.key,
    required this.showBadge,
    required this.child,
    required this.yourAction,
  });

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
        showBadge: showBadge,
        position: badges.BadgePosition.bottomEnd(bottom: -8, end: -6),
        onTap: () {}, //TODO: haven't used yet
        badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.white,
            borderSide: BorderSide(
                width: 1, color: Color.fromARGB(255, 105, 105, 105))),
        badgeContent: Icon(Icons.error, color: Colors.red),
        child: InkWell(onTap: yourAction, child: child));
  }
}
