
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AddNotePage.dart';
import 'Views/NoteDetailsPage.dart';

class HomeNote extends StatefulWidget {
  const HomeNote({Key? key}) : super(key: key);

  @override
  State<HomeNote> createState() => _HomeNoteState();
}

class _HomeNoteState extends State<HomeNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(child: GridView(children: [
          GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => NoteDetailsPage()) );},
              child: Container(
                height:300.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,color: Colors.blue[500],),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("Today",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold ),)],
                ),)),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("quiz at 5:00 pm",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),)],
            ),),
          Container(height:300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("Dog walk",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold ),)],
            ),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("must READ",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold ),)],
            ),),

        ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),),),
      ),
      floatingActionButton: FloatingActionButton
        (onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => AddNotePage()) );  },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[800],
        elevation: 4.0,),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: onTabTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //
      //     ),
      //   ],
      // ),
    );


  }
}
