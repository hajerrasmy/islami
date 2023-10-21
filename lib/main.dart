import 'package:flutter/material.dart';
import 'package:islami/home/homeScreen.dart';
import 'package:islami/ui/chapterDetals/chapterDetalsScreen.dart';
import 'package:islami/ui/hadethDetial/hadethDetialScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme:CardTheme(
          color:Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(18)
          ),
        ) ,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(
            size: 32,
        )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 28,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        secondary: Color(0x91B7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      routes: {
        HadethDetialScreen.routeName: (_) => HadethDetialScreen(),
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}


