import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconButtonWidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xfff8f5fa),
          ),
          padding: EdgeInsets.all(12),
          child: Icon(icon, size: 30, color: Color(0xff000000)),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
