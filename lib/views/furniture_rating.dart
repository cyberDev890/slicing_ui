import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../properti.dart/furniture.dart';

class FurnitureRating extends StatelessWidget {
  const FurnitureRating({
    Key? key,
    required this.furniture,
  }) : super(key: key);

  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: RatingBar.builder(
          initialRating: furniture.rating,
          itemSize: 18,
          direction: Axis.horizontal,
          allowHalfRating: true,
          ignoreGestures: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.only(right: 4.0),
          itemBuilder: (context, _) => Image.asset(
            'icons/iconsStarfilled.png',
          ),
          onRatingUpdate: (rating) {},
        ));
  }
}
