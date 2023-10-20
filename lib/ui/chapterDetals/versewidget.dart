import 'package:flutter/material.dart';

import '../../ui/chapterDetals/chapterDetalsScreen.dart';
//import '../hadeth/hadethTab.dart';

class versewidget extends StatelessWidget {
  String content ;
  int index ;

  versewidget(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment :Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text('$content {${index+1}}' ,
          textDirection: TextDirection.rtl,
          textAlign:TextAlign.center ,
          style: TextStyle( fontSize: 20
        ),));
  }
}
