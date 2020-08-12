import 'package:flutter/material.dart';
import 'package:tlk_wiki/const.dart';
import 'package:tlk_wiki/models/character.dart';
import 'list_screen.dart';

class CharacterScreen extends StatelessWidget {
  static const id = 'character_screen';
  final Character character;

  CharacterScreen({this.character});

  @override
  Widget build(BuildContext context) {
    final CharacterScreenArgs args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          args.character.name,
        ),
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
