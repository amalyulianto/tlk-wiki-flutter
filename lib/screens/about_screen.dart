import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutScreen extends StatelessWidget {
  static const id = '/about_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Developer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/amalia.jpg'),
                radius: 125.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Muhammad Ichlasul Amal Yulianto',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'kadjiamal@gmail.com',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                'Gorontalo',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RatingBar(
                initialRating: 5,
                itemCount: 5,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.red,
                      );
                    case 1:
                      return Icon(
                        Icons.sentiment_dissatisfied,
                        color: Colors.redAccent,
                      );
                    case 2:
                      return Icon(
                        Icons.sentiment_neutral,
                        color: Colors.amber,
                      );
                    case 3:
                      return Icon(
                        Icons.sentiment_satisfied,
                        color: Colors.lightGreen,
                      );
                    case 4:
                      return Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      );
                  }
                },
                onRatingUpdate: (rating) {
                  print(rating);
                  Fluttertoast.showToast(
                      msg: '$rating, Thank You!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
              ),
            ],
          ),
        ));
  }
}
