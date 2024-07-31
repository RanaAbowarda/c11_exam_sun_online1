import 'package:flutter/material.dart';

class MoodyScreen extends StatefulWidget {
  const MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Image.asset("assets/images/logo_moody.png"),
        title: Row(
          children: [
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
    );
  }
}
