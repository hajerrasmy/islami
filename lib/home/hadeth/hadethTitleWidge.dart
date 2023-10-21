import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadet.dart';
import 'package:islami/ui/hadethDetial/hadethDetialScreen.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetialScreen.routeName, arguments: hadeth);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            hadeth.title,
            style: TextStyle(fontSize: 25),
          )),
    );
  }
}
