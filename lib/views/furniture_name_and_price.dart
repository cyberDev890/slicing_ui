import 'package:flutter/material.dart';

import '../properti.dart/furniture.dart';



class FurnitureNameAndPrice extends StatelessWidget {
  const FurnitureNameAndPrice({
    Key? key,
    required this.furniture,
  }) : super(key: key);

  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 22.0, left: 22.0, top: 15.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            furniture.name,
            style: const TextStyle(
              color: Color(0XFF4A4543),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            furniture.price,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: Color(0XFF9A9390),
            ),
          ),
        ],
      ),
    );
  }
}
