import 'package:flutter/material.dart';
import 'package:tlk_wiki/screens/about_screen.dart';
import 'package:tlk_wiki/screens/list_screen.dart';
import 'package:tlk_wiki/screens/series_screen.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('The Last Kingdom Wiki'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AboutScreen.id);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.85),
              BlendMode
                  .dstATop, // Apply opaque color with opacity on the background.
            ),
            image: AssetImage(
              'assets/images/the_last_kingdom.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.6,
              bottom: MediaQuery.of(context).size.height * 0.001),
          child: Column(
            children: <Widget>[
              NavigationButton(
                text: 'SERIES OVERVIEW',
                onPressed: () {
                  Navigator.pushNamed(context, SeriesScreen.id);
                },
              ),
              NavigationButton(
                text: 'LIST OF MAIN CHARACTERS',
                onPressed: () {
                  Navigator.pushNamed(context, ListScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  NavigationButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(text),
    );
  }
}
