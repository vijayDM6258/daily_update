import 'package:flutter/material.dart';

class Mybuton extends StatelessWidget {
  Mybuton({
    super.key,
    required this.txt,
    required this.onTap,
  });

  final String txt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            txt,
          ),
        ),
      ),
    );
  }
}
