import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/chapterDetals/versewidget.dart';


class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName= "ChapterDetailsScreen";

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override


  Widget build(BuildContext context) {
    ChapterdetailsArgs args = ModalRoute.of(context)?.settings.arguments as   ChapterdetailsArgs ;
    if (verses.isEmpty){
    loadfile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/mainbg.png"),
              fit: BoxFit.fill,
            )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty?
              Center(child: CircularProgressIndicator(),)
           : Card(
            margin: EdgeInsets.symmetric(vertical:48  , horizontal:24 ),

             child: ListView.separated(
             itemBuilder: (context , index){
             return versewidget(verses[index], index);}
            ,itemCount: verses.length,
            separatorBuilder: (context , index ) => Container(
    color: Theme.of(context).primaryColor,
    width: double.infinity,
    height: 3,
    margin: EdgeInsets.symmetric(horizontal: 64),
    ) ,
           ) ,
        )));
  }

  List<String> verses =[];

  void loadfile(int index) async{
    String fileContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    verses = fileContent.split("\n");
    setState(() {

    });

  }
}
class ChapterdetailsArgs{
  String title ;
  int  index ;
  ChapterdetailsArgs(this.title,this.index);
}
