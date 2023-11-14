import 'package:flutter/material.dart';

const kPrimaryGradient = LinearGradient(
  colors: [
    Colors.teal,
    Color(0xFF43658b),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key, this.onTap,required this.text});
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}