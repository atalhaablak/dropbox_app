import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InterHeadButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const InterHeadButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.adventPro(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(onPressed: onPressed(), icon: Icon(Icons.more_horiz, color: Color.fromARGB(255, 164, 158, 158))),
      ],
    );
  }
}
