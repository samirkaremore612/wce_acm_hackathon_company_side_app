import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linked_in/homePage.dart';
import 'package:linked_in/workers_profile.dart';

class companyProfile extends StatefulWidget {
  const companyProfile({Key? key}) : super(key: key);

  @override
  State<companyProfile> createState() => _companyProfileState();
}

class _companyProfileState extends State<companyProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(

      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Text("Machine operator and indusrtrial worker||Bhandara ,Maharashtra, India ",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),
            SizedBox(height: 15,),
            Row(children: [Container(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw0xFHJzI7nXYS6gYy_YCb2SQIazTqlnTGltA0H9IPgqQWjfsbmyqkKmO3qxkngz6DEFo&usqp=CAU",height:55,width:55  ,),),
              SizedBox(width: 10,),
              Text('Rama Devannd Dhaygude||Bhandara,Maharashtra,India',style: TextStyle(fontSize: 20),),
            ]),
            Row(children: [
              Text('>Work in textile industry for three years',style: TextStyle(fontSize: 20),),
            ]),
            SizedBox(width: 10,height: 10,),
            Row(children: [
              Text(">Student of goverments certified course on textiles",style: TextStyle(fontSize: 20),),
            ]),
            SizedBox(width: 10,height: 10,),
            Row(children: [
              Text(">gmail:rama****@123,mob.no:87*****98",style: TextStyle(fontSize: 20),),
            ]),
            SizedBox(height: 20,width: 20,),
            Row(children: [
              RaisedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:
                      (context)=>Workers_profile()));

                },
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.pink,Colors.blueAccent]
                    ),
                    borderRadius: BorderRadius.circular(30.0),

                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                    alignment: Alignment.center,
                    child: Text(
                      "View Profile",
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
                        colors: [Colors.pink,Colors.blueAccent]
                    ),
                    borderRadius: BorderRadius.circular(80.0),

                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                    alignment: Alignment.center,
                    child: Text(
                      "Offer job",
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

            ],),

            SizedBox(height: 50,width: 50,),

            Container(decoration: BoxDecoration(color: Colors.black12),
              child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                ),
              ),
            ),
            ),
            Text("Mobile repairer and Electronics indusrtrial worker||Bhandara ,Maharashtra, India ",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),
            SizedBox(height: 10,),
          Row(children: [Container(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw0xFHJzI7nXYS6gYy_YCb2SQIazTqlnTGltA0H9IPgqQWjfsbmyqkKmO3qxkngz6DEFo&usqp=CAU",height:55,width:55  ,),),
            SizedBox(width: 10,),
            Text('Rakesh Dharne||Gondia,Maharashtra,India',style: TextStyle(fontSize: 20),),
          ]),

            SizedBox(width: 10,height: 10,),
            Row(children: [
              Text('>Work in Electronics chip industry for three years',style: TextStyle(fontSize: 20),),
            ]),
            SizedBox(height: 20,width: 20,),
            Row(children: [
              Text(">Student of goverments certified course on textiles",style: TextStyle(fontSize: 20),),
            ]),
            SizedBox(width: 10,height: 10,),
            Row(children: [
              Text(">gmail:rama****@123,mob.no:87*****98",style: TextStyle(fontSize: 20),),
            ]),

            Container(decoration: BoxDecoration(color: Colors.black12),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  ),

                ),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
