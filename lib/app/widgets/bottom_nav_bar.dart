import 'package:flutter/material.dart';

const List<Destination> destinations = <Destination>[
 Destination(
    label: 'Home',
    icon: Icon(Icons.home),
    outlineIcon: Icon(Icons.home_outlined),
    tooltip: "Find Gigs",
  ),
 Destination(
    label: 'Debt',
    icon: Icon(Icons.attach_money),
    outlineIcon: Icon(Icons.attach_money_outlined),
    tooltip: "Debt Management",
  ),
  
  Destination(
    label: 'Community',
    icon: Icon(Icons.people),
    outlineIcon: Icon(Icons.people_outline),
    tooltip: "Ask Questions in Chatbot",
  ),
  Destination(
    label: 'Compare',
    icon: Icon(Icons.monitor_heart),
    outlineIcon: Icon(Icons.monitor_heart_outlined),
    tooltip: "Price Comparision",
  ),
];

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: destinations.map((val) {
        return NavigationDestination(
          icon: val.outlineIcon,
          selectedIcon: val.icon,
          label: val.label,
          tooltip: val.tooltip,
        );
      }).toList(),
    );
  }
}

class Destination {
  const Destination(
      {required this.label,
      required this.icon,
      required this.outlineIcon,
      required this.tooltip});
  final String label;
  final Icon icon;
  final Icon outlineIcon;
  final String tooltip;
}
