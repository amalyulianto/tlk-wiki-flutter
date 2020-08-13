import 'package:flutter/material.dart';
import 'package:tlk_wiki/screens/about_screen.dart';
import 'package:tlk_wiki/screens/favorite_screen.dart';
import 'package:tlk_wiki/screens/home_screen.dart';
import 'package:tlk_wiki/screens/list_screen.dart';
import 'package:tlk_wiki/screens/character_screen.dart';
import 'package:tlk_wiki/screens/series_screen.dart';
import 'package:tlk_wiki/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1b1b2f),
        accentColor: Color(0xFF162447),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ListScreen.id: (context) => ListScreen(),
        CharacterScreen.id: (context) => CharacterScreen(),
        SeriesScreen.id: (context) => SeriesScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        FavoriteScreen.id: (context) => FavoriteScreen(),
      },
    );
  }
}
