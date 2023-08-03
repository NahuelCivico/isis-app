import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isisapp/core/design/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int index;
  final Function onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.white,
                  AppColors.lightOrange,
                ],
              ),
            ),
            height: 60,
          ),
          BottomNavigationBar(
            currentIndex: index,
            onTap: (index) => {
              onTap(index),
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: AppColors.orange,
            unselectedItemColor: AppColors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.house,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.orange,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.calendar,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.orange,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                label: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
