import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suraitem extends StatelessWidget {
  String nameAR;
  String nameEG;
  int index;
  int versesCount;

  Suraitem({
    super.key,
    required this.nameAR,
    required this.nameEG,
    required this.index,
    required this.versesCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        nameEG,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/img_sur_number_frame.png"),
          Text(
            "$index",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      subtitle: Text(
        "$versesCount Verses",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Text(
        nameAR,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
