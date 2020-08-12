import 'package:flutter/material.dart';
import 'character_screen.dart';
import 'package:tlk_wiki/models/characters_data.dart';
import 'package:tlk_wiki/models/character.dart';

class ListScreen extends StatelessWidget {
  static const id = 'list_screen';
  final CharactersData charactersData = CharactersData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'The Last Kingdom Characters',
        ),
      ),
      body: ListView.builder(
        itemCount: charactersData.data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                CharacterScreen.id,
                arguments:
                    CharacterScreenArgs(character: charactersData.data[index]),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:
                        AssetImage(charactersData.data[index].photo),
                    radius: MediaQuery.of(context).size.height * 0.053,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        charactersData.data[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          charactersData.data[index].detail,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CharacterScreenArgs {
  final Character character;
  CharacterScreenArgs({this.character});
}
