import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
class Add_Vacancy extends StatefulWidget {
  @override
  State<Add_Vacancy> createState() => _Add_VacancyState();
}

class _Add_VacancyState extends State<Add_Vacancy> {
  var vacancy;
  var img_url;
  var companyName;
  var contacts;
  var value=0;
  TextEditingController VacancyController=TextEditingController();
  TextEditingController companyNameController=TextEditingController();
  TextEditingController ContactsController=TextEditingController();
  TextEditingController UrlController=TextEditingController();


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
                            "$img_url"
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
                  "Add post"
                  ,style: TextStyle(
                    fontSize: 25.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(child: Text(
                  "Url of the image",
                  style: TextStyle(
                    color: Colors.blue[1000],
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,

                  ),
                ),),
                SizedBox(
                  height: 5,
                ),

                TextField(
                  onChanged: (value) {
                    img_url= value;
                    //Do something with the user input.
                  },
                  controller:UrlController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'image url',
                    hintText: 'Enter url of company photo or symbol',
                  ),
                ),

                Column(
                  children: [Padding(padding: EdgeInsets.all(15),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 30.0,),
                      alignment: Alignment.center,

                      child: Text(
                        "Vacany name/heading",
                        style: TextStyle(
                            color: Colors.blue[1000],
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w500,

                        ),
                      ),
                    ),
                    ),

                    SizedBox(height: 5,width:10,),
                    TextField(
                      onChanged: (value) {
                        vacancy= value;
                        //Do something with the user input.
                      },
                      controller:VacancyController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'vacancy',
                        hintText: 'Enter job vacancy',
                      ),
                    ),

                    Container(child: Text(
                      "Company name",
                      style: TextStyle(
                        color: Colors.blue[1000],
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,

                      ),
                    ),),
                    SizedBox(
                      height: 5,
                    ),

                    TextField(
                      onChanged: (value) {
                        companyName= value;
                        //Do something with the user input.
                      },
                      controller:companyNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'company name',
                        hintText: 'Enter company name having vacancy',
                      ),
                    ),
                    Container(child: Text(
                      "Contacts",
                      style: TextStyle(
                        color: Colors.blue[1000],
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,

                      ),
                    ),),
                    SizedBox(
                      height: 5,
                    ),

                    TextField(
                      onChanged: (value) {
                        contacts= value;
                        //Do something with the user input.
                      },
                      controller:ContactsController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contacts',
                        hintText: 'Enter contacts for connecting',
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
