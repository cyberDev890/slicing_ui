import 'package:flutter/material.dart';

class Tabbarmenu extends StatefulWidget {
    final TabController? controllerTab;

  const Tabbarmenu({super.key, required this.controllerTab});

  @override
  State<Tabbarmenu> createState() => _TabbarmenuState();
}

class _TabbarmenuState extends State<Tabbarmenu> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.controllerTab,
      isScrollable: true,
      indicatorColor: const Color(0XFF9A9390),
      splashBorderRadius: BorderRadius.circular(20),
      labelPadding: const EdgeInsets.symmetric(horizontal: 14),
      indicator: BoxDecoration(
        color: const Color(0XFF9A9390),
        borderRadius: BorderRadius.circular(20),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelColor: const Color(0XFF9A9390),
      padding: const EdgeInsets.only(left: 14),
      tabs: const [
        Tab(
          child: Text("All",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-Medium',
              )),
        ),
        Tab(
          child: Text("Living room",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-Medium',
              )),
        ),
        Tab(
          child: Text("Bedroom",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-Medium',
              )),
        ),
        Tab(
          child: Text("Dining room",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-Medium',
              )),
        ),
        Tab(
          child: Text("Kitchen",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-Medium',
              )),
        ),
      ],
    );
  }
}
