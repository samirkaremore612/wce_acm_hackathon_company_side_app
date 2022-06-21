import "package:flutter/material.dart";


void main()
{
  runApp(
      MaterialApp(
        title:"Bottom APP menu",
        home:BottomMenu(),

      )
  );
}
class BottomMenu extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return _BottomMenuState();
  }

}
class _BottomMenuState extends State<BottomMenu>{
  int _selectedItem=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
          color: Colors.white,),
      onPressed: (){},),
        ],
      ),
      body:Center(
        child:Text("Welcome to cleanify services"          ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label:"Settings"),
          BottomNavigationBarItem(icon:Icon(Icons.cleaning_services),label:"Services"),


        ],
        currentIndex: _selectedItem,
        onTap:(setValue){
          setState((){
            _selectedItem=setValue;
          });
        },
      ),
    );

  }

}

