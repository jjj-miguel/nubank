import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double padding;
  final IconData icon;

  const CustomBox({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.padding,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: textColor),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
