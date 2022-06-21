import "package:flutter/material.dart";
import 'package:linked_in/image_slider.dart';
import 'package:linked_in/my_account.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightGreen[800],
      accentColor: Colors.cyan[600],
    ),
    debugShowCheckedModeBanner: false,
    title: "Bottom APP menu",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedItem=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("KAMGAR APP"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),

      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          //header

          //header
          new UserAccountsDrawerHeader(
              accountName: Text("Samir karemore"),
              accountEmail: Text("samirkaremore612@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
              ),
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
              )),
          //body

          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:
                  (context)=>ProfileUI2(),
              ));
            },
            child: ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
            ),
          ),
        ]),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label:"Settings"),
          BottomNavigationBarItem(icon:Icon(Icons.notifications),label:"Notifications"),


        ],
        currentIndex: _selectedItem,
        onTap:(setValue){
          setState((){
            _selectedItem=setValue;
          });
        },
      ),
      body: ImageSlider(),

    );
  }
}

