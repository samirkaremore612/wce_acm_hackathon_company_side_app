import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
class ProfileUI2 extends StatefulWidget {
  @override
  State<ProfileUI2> createState() => _ProfileUI2State();
}

class _ProfileUI2State extends State<ProfileUI2> {
  TextEditingController nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(

              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              " "
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0,2.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwi1nh-9TH9y8ky7nGJXuOOrnBAs9luAdx5Q&usqp=CAU"
                        ),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 60,
                ),
                Text(
                  "Rajat Palankar"
                  ,style: TextStyle(
                    fontSize: 25.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Bhandara-Maharashtra, India"
                  ,style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Labour"
                  ,style: TextStyle(
                    fontSize: 15.0,
                    color:Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 15,
                ),

                Text(
                  "Industrial worker || Vehicle driver"
                  ,style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
                Container(child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    ),
                  ),
                ),
                    ),
                Column(
                  children: [Padding(padding: EdgeInsets.all(15),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 30.0,),
                      alignment: Alignment.center,

                      child: Text(
                        "Skills",
                        style: TextStyle(
                            color: Colors.blue[1000],
                            fontSize: 25.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w500,

                        ),
                      ),
                    ),
                    ),

                    SizedBox(height: 5,width:10,),
                    TextField(
                      controller:nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Skills',
                        hintText: 'Enter your skills',
                      ),
                    ),

                    Container(child: Text(
                      "EXperiences",
                      style: TextStyle(
                        color: Colors.blue[1000],
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,

                      ),
                    ),),
                    SizedBox(
                      height: 5,
                    ),

                    TextField(
                      controller:nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Experiences',
                        hintText: 'Enter your Experiences',
                      ),
                    ),
                    Container(child: Text(
                      "Certificates",
                      style: TextStyle(
                        color: Colors.blue[1000],
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,

                      ),
                    ),),
                    SizedBox(
                      height: 5,
                    ),

                    TextField(
                      controller:nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Certificates',
                        hintText: 'Enter certificates you have',
                      ),
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: (){

                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.pink,Colors.redAccent]
                          ),
                          borderRadius: BorderRadius.circular(30.0),

                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder:
                            (context)=>HomePage()));

                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.pink,Colors.redAccent]
                          ),
                          borderRadius: BorderRadius.circular(80.0),

                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "HOME",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}