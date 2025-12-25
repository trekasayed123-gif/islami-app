import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/hadith_bg.png"
            ),
            fit: BoxFit.cover
        ),
      ),
    ) ;
  }
}