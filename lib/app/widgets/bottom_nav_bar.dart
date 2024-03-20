import 'package:flutter/material.dart';

const List<Destination> destinations = <Destination>[
  Destination(
    label: 'Debt',
    icon: Icon(Icons.attach_money),
    outlineIcon: Icon(Icons.attach_money_outlined),
    tooltip: "Debt Management",
  ),
  Destination(
    label: 'Gigs',
    icon: Icon(Icons.home_repair_service),
    outlineIcon: Icon(Icons.home_repair_service_outlined),
    tooltip: "Find Gigs",
  ),
  Destination(
    label: 'Chatbot',
    icon: Icon(Icons.chat),
    outlineIcon: Icon(Icons.chat_outlined),
    tooltip: "Ask Questions in Chatbot",
  ),
  Destination(
    label: 'Compare',
    icon: Icon(Icons.shopping_cart),
    outlineIcon: Icon(Icons.shopping_cart_outlined),
    tooltip: "Price Comparision",
  ),
  Destination(
    label: 'Profile',
    icon: Icon(Icons.person),
    outlineIcon: Icon(Icons.person_outline),
    tooltip: "User Profile",
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
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
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
