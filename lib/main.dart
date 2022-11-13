// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:slicing_ui/module/tabbar.dart';
import 'package:slicing_ui/router/app_router.dart';

import 'views/detail_furniture.dart';

import 'module/navbar.dart';
import 'properti.dart/furniture.dart';
import 'views/furniture_card.dart';

void main() {
  runApp(const Homeview());
}

class Homeview extends StatefulWidget {
  const Homeview({super.key});
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: Routes.home),
      builder: (_) => const Homeview(),
    );
  }

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> with TickerProviderStateMixin {
  late TabController tabMenuC;
  int _selectedIndex = 0;

  @override
  void initState() {
    tabMenuC = TabController(vsync: this, length: 5);
    super.initState();
  }

  void _tappedIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 18,
                        width: 22,
                        child: Image.asset('icons/iconsMenu.png'),
                      ),
                      const Text('Home',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 16,
                              fontFamily: 'Poppins-Medium',
                              color: Color(0xFF4A4543))),
                      SizedBox(
                        height: 18,
                        width: 18,
                        child: Image.asset('icons/iconsSearch.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: Text(
                    "Discover the most\nmodern furniture",
                    style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 22,
                        fontFamily: 'Poppins-Medium',
                        color: Color(0xFF4A4543)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Tabbarmenu(controllerTab: tabMenuC),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 400,
                  child: Text("Recommended Furnitures",
                      style: TextStyle(
                          letterSpacing: 1.2,
                          fontSize: 16,
                          fontFamily: 'Poppins-Medium',
                          color: Color(0xFF4A4543))),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: Furniture.furnitures.length,
                    itemBuilder: (context, index) {
                      var furniture = Furniture.furnitures[index];
                      return FurnitureCard(
                        onTap: () => Navigator.push(context,
                            DetailFurniture.route(furniture: furniture)),
                        furniture: furniture,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: NavBarMenu(
            selectedIndex: _selectedIndex,
            onTap: (value) => _tappedIndex(value),
          ),
        ));
  }
}
