import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadet.dart';

class HadethDetialScreen extends StatelessWidget {
  static const String routeName = "hadeth";

  const HadethDetialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
            body: Column(
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                    child: SingleChildScrollView(
                      child: Text(
                        args.content,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
