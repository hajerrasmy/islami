import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadet.dart';
import 'hadethTitleWidge.dart';

class hadethTab extends StatefulWidget {
  hadethTab({super.key});

  @override
  State<hadethTab> createState() => _hadethTabState();
}

class _hadethTabState extends State<hadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) ladethfile();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/image/hadeth-image.png",
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ))),
            child: Text(
              "Hadeth",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            flex: 3,
            child: allAhadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(allAhadeth[index]);
                    },
                    separatorBuilder: (context, index) => Container(
                          color: Theme.of(context).primaryColor,
                          width: double.infinity,
                          height: 3,
                          margin: EdgeInsets.symmetric(horizontal: 64),
                        ),
                    itemCount: allAhadeth.length),
          ),
        ],
      ),
    );
  }

  List<Hadeth> allAhadeth = [];

  void ladethfile() async {
    String fileContect =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = fileContect.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLine = singleHadeth.trim().split("\n");
      String title = hadethLine[0]; // frist line
      hadethLine.remove(0);
      String content = hadethLine.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
      setState(() {});
    }
  }
}
