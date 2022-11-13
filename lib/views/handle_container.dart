import 'package:flutter/material.dart';


class HandleContainer extends StatelessWidget {
  const HandleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 6.0),
        height: 5,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFFBBBBBB),
        ),
      ),
    );
  }
}
