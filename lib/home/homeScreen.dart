import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethTab.dart';
import 'package:islami/home/quran/quranTab.dart';
import 'package:islami/home/radio/radioTab.dart';
import 'package:islami/home/tasbeh/tasbehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectTab= 0;

 // const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/image/mainbg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectTab=index;
            });
          },
           currentIndex: selectTab,
          items: [

            BottomNavigationBarItem(          backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/moshaf_blue.png")), label: "Quran" ),
            BottomNavigationBarItem(          backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/quran-quran-svgrepo-com.png")), label: "Hadeth" ),
            BottomNavigationBarItem(        backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/sebha_blue.png")), label: "Sebha" ),
            BottomNavigationBarItem(          backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/radio.png")), label: "Radio" ),



          ],
        ),
        body: tabs[selectTab],
      ),
    );
  }
  List<Widget> tabs =[
    QuranTab(),
    hadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
