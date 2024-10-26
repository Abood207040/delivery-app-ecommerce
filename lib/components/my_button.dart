import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = Colors.blue, // Default color
    this.textColor = Colors.white, // Default color
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16), // Adjusted padding
        margin: const EdgeInsets.symmetric(horizontal: 20), // Adjusted margin
        decoration: BoxDecoration(
          color: backgroundColor, // Use passed background color
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor, // Use passed text color
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
