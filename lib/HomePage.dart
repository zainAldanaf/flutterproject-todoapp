import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddNotePage.dart';
import 'db_provider.dart';
import 'Notes.dart';
import '/NoteDetailsPage.dart';

class HomeNote extends StatefulWidget {
  const HomeNote({Key? key}) : super(key: key);

  @override
  State<HomeNote> createState() => _HomeNoteState();
}

class _HomeNoteState extends State<HomeNote> {
  @override
  Widget build(BuildContext context) {
    // List<Notes> noteList = Provider.of<DbController>(context).notes;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<DbProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child:
            Container(child: GridView(children: [
              GestureDetector(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NoteDetailsPage()));
              },
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[500],),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
    /* Note
                        Text(provider.name ,style: TextStyle(color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                        Text("Today", style: TextStyle(color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),)*/
                      ],
                    ),)),

            ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                (crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),),
            ),
          );
        }),
    floatingActionButton: FloatingActionButton
    (onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => AddNotePage()) ); },
    child: Icon(Icons.add),
    backgroundColor: Colors.blue[800],
    elevation:
    4.0
    ,
    )
    ,
    );

  }
  }
