import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "full Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          fillColor: const Color(0xff1c2341),
          filled: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF46A0AE)))),
    );
  }
}