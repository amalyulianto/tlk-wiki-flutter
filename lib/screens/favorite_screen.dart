import 'package:flutter/material.dart';
import 'package:tlk_wiki/screens/list_screen.dart';
import 'package:tlk_wiki/screens/character_screen.dart';
import 'package:tlk_wiki/models/characters_data.dart';

class FavoriteScreen extends StatelessWidget {
  static const id = '/favorite_screen';

  final CharactersData charactersData = CharactersData();
  @override
  Widget build(BuildContext context) {
    // Receiving data and store it in the args variable
    final CharacterScreenArgs args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: args.saved.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the CharacterScreen by passing the selected member from saved list.
                Navigator.pushNamed(
                  context,
                  CharacterScreen.id,
                  arguments: CharacterScreenArgs(
                      character: args.saved[index], saved: args.saved),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10, left: 10.0, right: 2),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(args.saved[index].photo),
                          radius: MediaQuery.of(context).size.height * 0.053,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                args.saved[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  args.saved[index].detail,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
