import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:mudent_app/config/config.dart';

class CustomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: DesignSystem.g4,
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
      selectedItemColor: DesignSystem.primary,
      unselectedItemColor: DesignSystem.g5,
      items: [
        BottomNavigationBarItem(
          icon: Iconify(
            MaterialSymbols.home_outline,
            color: widget.selectedIndex == 0
                ? DesignSystem.primary
                : DesignSystem.g5,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Iconify(
            Ph.chat_circle_dots,
            color: widget.selectedIndex == 1
                ? DesignSystem.primary
                : DesignSystem.g5,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Iconify(
            MaterialSymbols.calendar_month_outline_rounded,
            color: widget.selectedIndex == 2
                ? DesignSystem.primary
                : DesignSystem.g5,
          ),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Iconify(
            MaterialSymbols.person_outline,
            color: widget.selectedIndex == 3
                ? DesignSystem.primary
                : DesignSystem.g5,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
