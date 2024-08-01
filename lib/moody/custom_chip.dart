import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  CustomChip(
      {super.key,
      required this.image,
      required this.text,
      required this.color});
  String text;
  Color color;
  String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 155,
      child: RawChip(
          padding: const EdgeInsets.all(16),
          side: BorderSide(color: color),
          label: Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              text,
              style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          avatar: Image.asset(
            image,
          ),
          color: MaterialStatePropertyAll(color)),
    );
  }
}
