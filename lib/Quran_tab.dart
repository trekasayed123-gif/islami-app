import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/quran_bg.png"),
          fit: BoxFit.cover,
          opacity: .2
        ),
      ),

      child: Column(
        children: [
          SizedBox(height: 200),
          TextField(
            
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              prefixIcon: Image.asset(
                "assets/images/Vector (1).png",
                color: Color(0xffE2BE7F),
              ),
              hint: Text("Sura Name"),
              hintStyle: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
