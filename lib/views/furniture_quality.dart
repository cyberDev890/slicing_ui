import 'package:flutter/material.dart';


class FurnitureQuality extends StatefulWidget {
  const FurnitureQuality({
    Key? key,
  }) : super(key: key);

  @override
  State<FurnitureQuality> createState() => _FurnitureQualityState();
}

class _FurnitureQualityState extends State<FurnitureQuality> {
  int _selectedQuality = 1;

  void _addQuality() {
    setState(() {
      _selectedQuality++;
    });
  }

  void _minQuality() {
    if (_selectedQuality == 1) {
      return;
    } else {
      setState(() {
        _selectedQuality--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Select Quality :',
            style: TextStyle(
              fontSize: 12,
              color: const Color(0XFF000000).withOpacity(0.3),
            ),
          ),
          Container(
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(100),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: const Color(0XFFEAEBEC),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () => _minQuality(),
                  icon: const Icon(
                    Icons.remove,
                    color: Color(0XFF9A9390),
                  ),
                ),
                Container(
                  height: 42,
                  width: 42,
                  color: const Color(0XFFEAEBEC),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '$_selectedQuality',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () => _addQuality(),
                  icon: const Icon(
                    Icons.add,
                    color: Color(0XFF9A9390),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
