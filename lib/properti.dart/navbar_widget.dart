import 'package:flutter/material.dart';

BottomNavigationBarItem navBarIcon({
  required String label,
  required String icon,
  Color? color,
  Color? iconColor,
}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Image.asset(
        icon,
        height: 22,
        width: 22,
        color: iconColor,
        alignment: Alignment.center,
      ),
    ),
  );
}
