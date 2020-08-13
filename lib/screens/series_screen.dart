import 'package:flutter/material.dart';
import 'package:tlk_wiki/const.dart';

class SeriesScreen extends StatelessWidget {
  static const id = '\series_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('The Last Kingdom'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/title_image.jpg',
            fit: BoxFit.contain,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Overview',
                  style: kSubtitleTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  overview,
                  style: kContentTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final overview =
    "The Last Kingdom is a British historical fiction television series based on Bernard Cornwell\'s The Saxon Stories series of novels. The first series of eight episodes premiered on 10 October 2015 on BBC America, and on BBC Two in the UK on 22 October 2015. A second series of eight episodes was aired on BBC Two in the UK in March 2017. Netflix was the sole distributor of the third series of ten episodes, produced by Carnival Films, streamed from 19 November 2018. On 26 December 2018, Netflix renewed the show for a fourth series, released on 26 April 2020 and once again produced by Carnival Films. It was renewed for a fifth series on 7 July 2020.\n\nUhtred of Bebbanburg, a warrior originally a rightful Ealdorman of Bebbanburg, was adopted by a Dane family. Growing up as a Dane, he left the Saxon lifestyle behind. But fate has just made him the Saxons greatest warrior, sworn to Alfred of Wessex, to protect Kingdom of Wessex and uniting England. But in his heart, all he wants is to return to Bebbanburg and rule in his birthplace.";
