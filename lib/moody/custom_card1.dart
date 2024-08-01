import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffECFDF3
            ),
            borderRadius: BorderRadius.circular(16)

        ),
        padding: const EdgeInsets.all(20),
        height: 168,
        width: 326,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Positive vibes",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff344054),),
                ),
                Text(
                  "Boost your mood with\n positive vibes",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff344054)),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_fill,
                          color: Color(0xff32D583
                          ),
                          size: 20,
                        )),
                    Text(
                      "10 mins",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000)),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset("assets/images/Walking the Dog.png",  height: 90,
              width: 100,)
          ],
        ),
      ),
    );
  }
}
