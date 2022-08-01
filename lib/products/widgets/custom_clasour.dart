import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomClasour extends StatelessWidget {
  final IconData icon;
  final String? label;
  final Color color;
  final double size;
  const CustomClasour({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRoundedBox(color: color, icon: icon, size: size),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: label!.isNotEmpty
              ? Text(
                  label!,
                  style: GoogleFonts.adventPro(
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),
      ],
    );
  }
}

class CustomRoundedBox extends StatelessWidget {
  final double size;
  const CustomRoundedBox({
    Key? key,
    required this.color,
    required this.icon,
    required this.size,
  }) : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
    );
  }
}
