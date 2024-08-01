

import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  CustomAvatar({super.key,required this.image});
String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor:const Color(0xffE4E7EC),
      child: CircleAvatar(
          radius: 30,
          backgroundImage:AssetImage(image)
      ),
    );
  }
}
