
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomTab extends StatelessWidget {
 CustomTab({super.key, required this.items});
  List<String> items = ["Art", "Business", "comedy", "Drama"];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      width: 382,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 102,
                  decoration: BoxDecoration(
                      color: const Color(0xffF5F5FA),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    items[index],
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff2E2E5D)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
