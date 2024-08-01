import 'package:c11_exam_sun_online/moody/custom_avatar.dart';
import 'package:c11_exam_sun_online/moody/custom_card1.dart';
import 'package:c11_exam_sun_online/moody/custom_chip.dart';
import 'package:c11_exam_sun_online/moody/custom_row1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:badges/badges.dart' as badges;

class MoodyScreen extends StatefulWidget {
  const MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  final controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/logo_moody.png"),
            Text(
              "Moody",
              style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000)),
            ),
            const SizedBox(
              width: 220,
            ),
           
          const  badges.Badge(
               badgeContent: Text('1'),
               child: Icon(
                Icons.notifications_none,
                color: Color(
                  0xff101828,
                ),
                size: 30,
                           ),
             ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    "Hello,",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff371B34)),
                  ),
                  Text(
                    "Sara Rose",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff371B34)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "How are you feeling today ?",
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff371B34)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAvatar(image: "assets/images/love.png"),
                CustomAvatar(image: "assets/images/cool.png"),
                CustomAvatar(image: "assets/images/happy.png"),
                CustomAvatar(image: "assets/images/sad.png"),
              ],
            ),
            CustomRow(text1: "Feature"),
            SizedBox(
              height: 168,
              width: 326,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: PageView(
                  controller: controller,
                  children: const [
                    CustomCard(),
                    CustomCard(),
                    CustomCard(),
                  ],
                ),
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const SwapEffect(
                    activeDotColor: Color(0xff98A2B3),
                    dotColor: Color(0xffD9D9D9),
                    dotHeight: 6,
                    dotWidth: 6),
              ),
            ),
            CustomRow(text1: "Exercise"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomChip(
                  image: "assets/images/Relaxation.png",
                  text: "Relaxation",
                  color: const Color(0xffF9F5FF),
                ),
                const SizedBox(
                  width: 40,
                ),
                CustomChip(
                  image: "assets/images/Meditation.png",
                  text: "Meditation",
                  color: const Color(0xffFDF2FA),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomChip(
                    image: "assets/images/Beathing.png",
                    text: "Breathing",
                    color: const Color(0xffFFFAF5),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  CustomChip(
                    image: "assets/images/Yoga.png",
                    text: "Yoga",
                    color: const Color(0xffF0F9FF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0xff667085),
        selectedItemColor: const Color(0xff027A48),
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
                size: 24,
                AssetImage(
                  "assets/images/home-05.png",
                )),
            label: ".",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(size: 24, AssetImage("assets/images/grid-01.png")),
            label: ".",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              size: 24,
              AssetImage("assets/images/calendar.png"),
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              size: 24,
              AssetImage("assets/images/user-03.png"),
            ),
            label: ".",
          ),
        ],
      ),
    );
  }
}
