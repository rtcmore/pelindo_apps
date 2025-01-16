import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.title,
    required this.onTap,
    this.width = double.infinity,
    this.height = 40,
    this.color = const Color(0xFF4B39EF),
    this.textColor = Colors.white,
    required int borderRadius,
  });

  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor,
                fontFamily: 'plusJakartaSans',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
