import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_model.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const routName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if(verses.isEmpty)
      {
        loadSuraFile(model.index);
      }

    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffE2BE7F)),
        centerTitle: true,
        backgroundColor: Color(0XFF202020),
        title: Text(
          model.nameEG,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/Group 1.png"),
          Column(
            children: [
              SizedBox(height: 40),
              Text(
                model.nameAR,
                style: TextStyle(
                  color: Color(0xffE2BE7F),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: verses.length,
                    itemBuilder: (context,index){
                 return Directionality(
                   textDirection: TextDirection.rtl,
                   child: Text(
                     "${verses[index]}(${index+1})",style: TextStyle(color: Color(0xffE2BE7F)),),
                 );
                }),
              ),
              SizedBox(height: 120,)
            ],
          ),
        ],
      ),
    );
  }

  void loadSuraFile(int index) async {
    String suraFile = await rootBundle.loadString("assets/file/${index + 1}.txt");
    List<String> lines = suraFile.split("\n");
    verses=lines;
    setState(() {

    });
  }
}
