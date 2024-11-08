// main_page.dart
import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';
import 'package:mudent_app/features/main/profilepage/profile_page.dart';

import 'calendarpage/calendar_page.dart';
import 'homepage/home_page.dart';
import 'widgets/widgets.dart'; // Import the HomePage widget

// MainPage is the main screen that contains bottom navigation and other pages
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Center(child: Text('Chat Page')),
    const CalendarPage(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: DesignSystem.g3,
          appBar: const CustomAppBar(),
          body: _pages[_selectedIndex],
          bottomNavigationBar: CustomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          )),
    );
  }
}
