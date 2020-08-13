import 'package:flutter/material.dart';
import 'package:tlk_wiki/const.dart';
import 'package:tlk_wiki/screens/list_screen.dart';

class CharacterScreen extends StatefulWidget {
  static const id = 'character_screen';
  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    final CharacterScreenArgs args = ModalRoute.of(context).settings.arguments;
    bool isSaved = args.saved.contains(args.character);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context, args.saved);
          },
        ),
        title: Text(
          args.character.name,
        ),
        actions: <Widget>[
          IconButton(
            // color: isSaved ? Colors.red : null,
            icon: isSaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            onPressed: () {
              setState(
                () {
                  if (isSaved) {
                    args.saved.remove(args.character);
                  } else {
                    args.saved.add(args.character);
                  }
                },
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            args.character.photo,
            fit: BoxFit.contain,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  args.character.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Life Story',
                  style: kSubtitleTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  args.character.detail,
                  style: kContentTextStyle,
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  'About',
                  style: kSubtitleTextStyle,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SubtitleText(
                            text: 'Gender',
                          ),
                          ContextText(
                            text: args.character.gender,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SubtitleText(
                            text: 'Residence',
                          ),
                          ContextText(
                            text: args.character.residence,
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SubtitleText(
                            text: 'Relatives',
                          ),
                          ContextText(text: args.character.relatives),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContextText extends StatelessWidget {
  final String text;

  ContextText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Text(
        text,
        style: kContentTextStyle.copyWith(height: 1.5),
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;

  SubtitleText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Text(
        text,
        style: kSubTitle2TextStyle,
      ),
    );
  }
}
