import 'package:flutter/material.dart';

import '../properti.dart/favorite_icon.dart';
import '../properti.dart/furniture.dart';

class FurnitureCard extends StatefulWidget {
  const FurnitureCard({
    Key? key,
    required this.furniture,
    this.onTap,
  }) : super(key: key);

  final Furniture furniture;
  final Function()? onTap;

  @override
  State<FurnitureCard> createState() => _FurnitureCardState();
}

class _FurnitureCardState extends State<FurnitureCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14, right: 8, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFFFFFFFF),
      ),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 4,
              child: Stack(
                children: [
                  Hero(
                    tag: widget.furniture.image,
                    child: Container(
                      height: 163,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.furniture.image),
                        ),
                      ),
                    ),
                  ),
                  FavoriteIcon(
                    onTap: () {
                      setState(() {
                        widget.furniture.isFavorite == true
                            ? widget.furniture.isFavorite = false
                            : widget.furniture.isFavorite = true;
                      });
                    },
                    icon: widget.furniture.isFavorite == true
                        ? const Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color(0XFFEE3127),
                          )
                        : Image.asset('icons/iconsHeart.png'),
                  )
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 12, bottom: 5),
                child: Text(
                  widget.furniture.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4A4543),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 14, right: 18.0, bottom: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.furniture.price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF9A9390),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icons/iconsStarfilled.png',
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${widget.furniture.rating}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFFBBBBBB),
                        ),
                      ),
                    ],
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
