import 'package:flutter/material.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState () => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Note App',style: TextStyle(color: Colors.white)), // Set text colorfontWeight: FontWeight.bold,),
        centerTitle: true,
        backgroundColor: Colors.blue[800],),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(

            color: Colors.grey[50],
            padding: EdgeInsets.all(16.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add Your New Note ',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 40.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Note Address',

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'What is your your note!',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(
                    primary: Colors.blue[800], // set the background color to blue
                    minimumSize: Size(415, 50), // set the minimum width and height
                  ),
                  onPressed: () {
                    // do something when button is pressed
                  },
                  child: Text('Add Note'),


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
