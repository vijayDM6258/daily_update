import 'package:flutter/material.dart';

class myTextfield extends StatelessWidget {
  final String hntxt;
  final bool abstxt;
  final TextEditingController controller;

  myTextfield({
    super.key,
    required this.hntxt,
    required this.abstxt,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hntxt),
      ),
    );
  }
}
