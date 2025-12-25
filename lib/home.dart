import 'package:flutter/material.dart';

class home extends StatefulWidget {
  static const routName = "home";

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showSelectedLabels: true,
        currentIndex: index,

        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: index == 0
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Color.fromRGBO(32, 32, 32, .6),
                    ),

                    child: ImageIcon(
                      AssetImage("assets/images/Vector (1).png"),
                    ),
                  )
                : ImageIcon(AssetImage("assets/images/Vector (1).png")),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: index == 1
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Color.fromRGBO(32, 32, 32, .6),
                    ),

                    child: ImageIcon(
                      AssetImage("assets/images/Icon-Set-Filled.png"),
                    ),
                  )
                : ImageIcon(AssetImage("assets/images/Icon-Set-Filled.png")),
            label: "hadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: index == 2
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Color.fromRGBO(32, 32, 32, .6),
                    ),

                    child: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_sebha.png")),
            label: "sepha",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: index == 3
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Color.fromRGBO(32, 32, 32, .6),
                    ),

                    child: ImageIcon(
                      AssetImage("assets/images/Vector (2).png"),
                    ),
                  )
                : ImageIcon(AssetImage("assets/images/Vector (2).png")),
            label: "radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: index == 4
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Color.fromRGBO(32, 32, 32, .6),
                    ),

                    child: ImageIcon(AssetImage("assets/images/ic_time.png")),
                  )
                : ImageIcon(AssetImage("assets/images/ic_time.png")),
            label: "time",
          ),
        ],
      ),
    );
  }
}
