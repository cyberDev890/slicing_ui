
import 'package:flutter/material.dart';

import '../properti.dart/navbar_icon.dart';
import '../properti.dart/navbar_widget.dart';

class NavBarMenu extends StatelessWidget {
  const NavBarMenu({
    Key? key,
    required int selectedIndex,
    this.onTap,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 16,
      backgroundColor: Colors.white,
      unselectedItemColor: const Color(0XFF9A9390),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: List.generate(
        NavBarIcon.navBarIcons.length,
        (i) {
          var navIcon = NavBarIcon.navBarIcons[i];
          return navBarIcon(
            label: navIcon.label,
            icon: navIcon.icon,
            color: _selectedIndex == i ? const Color(0XFF9A9390) : Colors.white,
            iconColor: _selectedIndex == i ? const Color(0XFFF8F8F8) : const Color(0XFF9A9390) ,
          );
        },
      ),
      currentIndex: _selectedIndex,
      onTap: onTap,
    );
  }
}
