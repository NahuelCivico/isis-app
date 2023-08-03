import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/appbar/custom_appbar.dart';
import 'package:isisapp/core/widgets/bottomnavbar/custom_bottom_navbar.dart';
import 'package:isisapp/core/widgets/drawer/custom_drawer.dart';
import 'package:isisapp/core/widgets/shared/custom_floating_action_button.dart';
import 'package:isisapp/features/calendar/pages/calendar_page.dart';
import 'package:isisapp/features/home/pages/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [const HomePage(), const CalendarPage()];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        index: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
