import 'package:flutter/material.dart';
import 'package:islame1_app/core/style_app.dart';
import 'package:islame1_app/screen/home/taps/Widget/azkar.dart';
import 'package:islame1_app/screen/home/taps/Widget/timeItmes.dart';

class TimTap extends StatelessWidget {
  const TimTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/time_bg.png"),fit: BoxFit.cover)
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 185,),
            TimeItems(),
            AzkarItm(),
          ],
        ),
      ),
    );
  }
}
