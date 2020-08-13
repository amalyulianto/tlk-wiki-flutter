import 'package:flutter/material.dart';
import 'package:tlk_wiki/screens/favorite_screen.dart';
import 'character_screen.dart';
import 'package:tlk_wiki/models/characters_data.dart';
import 'package:tlk_wiki/models/character.dart';

class ListScreen extends StatefulWidget {
  static const id = 'list_screen';
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final CharactersData charactersData = CharactersData();
  final List<Character> saved = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'The Last Kingdom Characters',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              setState(() {
                Navigator.pushNamed(
                  context,
                  FavoriteScreen.id,
                  arguments: CharacterScreenArgs(saved: saved),
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => FavoriteScreen(
                //       character: saved,
                //     ),
                //   ),
                // );
              });
              // Navigator.pushNamed(context, FavoriteScreen.id,
              //     arguments: CharacterScreenArgs(saved: saved));
              // print(saved);
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: charactersData.data.length,
        itemBuilder: (BuildContext context, int index) {
          bool isSaved = saved.contains(charactersData.data[index]);
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                CharacterScreen.id,
                arguments:
                    CharacterScreenArgs(character: charactersData.data[index]),
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
                        backgroundImage:
                            AssetImage(charactersData.data[index].photo),
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
                              charactersData.data[index].name,
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
                                charactersData.data[index].detail,
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
                      IconButton(
                        color: Colors.grey,
                        icon: Icon(
                            isSaved ? Icons.favorite : Icons.favorite_border),
                        onPressed: () {
                          setState(() {
                            if (isSaved) {
                              saved.remove(charactersData.data[index]);
                              print(saved);
                            } else {
                              saved.add(charactersData.data[index]);
                              print(saved);
                            }
                          });
                        },
                      )
                    ],
                  ),
                ),
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
  final List<Character> saved;
  CharacterScreenArgs({this.character, this.saved});
}
