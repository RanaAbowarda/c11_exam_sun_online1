import 'package:c11_exam_sun_online/audi_books/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_row.dart';

class AudiBooks extends StatefulWidget {
  const AudiBooks({super.key});

  @override
  State<AudiBooks> createState() => _AudiBooksState();
}


class _AudiBooksState extends State<AudiBooks> {
  List images = [
    "assets/images/Image Placeholder 1.png",
    "assets/images/Image Placeholder 2.png"
  ];

  List<String> items = ["Art", "Business", "comedy", "Drama"];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/Logo.png"),
            const Icon(
              Icons.settings_outlined,
              color: Color(
                0xff4838D1,
              ),
              size: 30,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CustomRow(
                text1: "categories",
                text2: "see more",
              ),
              CustomTab(items: items),
              CustomRow(text1: "Recommended For You", text2: "see more"),
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return  Image.asset(
                          images[index],
                          height: 300,
                          width: 200,
                        );
                      },
                      itemCount: 2),
                ),
              ),
              CustomRow(text1: "Best Seller", text2: "see more"),
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) =>
                        Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Card(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Image Placeholder 240x240.png",
                                    height: 120,
                                    width: 120,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Light Mage",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff010104),),
                                          ),
                                          Text(
                                            "Laurie Forest",
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color:const Color(0xff6A6A8B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                    options: CarouselOptions(
                        height: 144,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 3),
                        enlargeCenterPage: false,
                        scrollDirection: Axis.horizontal,
                        disableCenter: true),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              showUnselectedLabels: true,
              showSelectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      size: 51,
                      AssetImage(
                        "assets/images/Home.png",
                      )),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      size: 51, AssetImage("assets/images/Search.png")),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    size: 51, AssetImage("assets/images/Document.png"),
                  ),
                  label: "Library",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
