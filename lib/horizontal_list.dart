import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(
    home: HorizontalList(),
  ));
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget> [


          Category(
            image_location: 'assets/images/img_7.png',
            image_caption: 'rajasthani crafts',
          ),
          Category(
            image_location: 'assets/images/img_5.png',
            image_caption: 'flower pot crafts',
          ),
          Category(
            image_location: 'assets/images/img_6.png',
            image_caption: 'cloth crafts ',
          ),
          Category(
            image_location: 'assets/images/img_8.png',
            image_caption: 'solapuri crafts',

          ),
          Category(
            image_location: 'assets/images/img_9.png',
            image_caption: 'Wooden crafts',

          ),
          Category(
            image_location: 'assets/images/img_10.png',
            image_caption: 'cutting board crafts',

          ),
          Category(
            image_location: 'assets/images/img_11.png',
            image_caption: 'giftBox crafts',

          ),
          Category(
            image_location: 'assets/images/img_12.png',
            image_caption: 'cloths designing crafts',

          ),
          Category(
            image_location: 'assets/images/img_13.png',
            image_caption: 'solapuri crafts',

          ),
          Category(
            image_location: 'assets/images/img_7.png',
            image_caption: 'rajasthani crafts',
          ),
          Category(
            image_location: 'assets/images/img_5.png',
            image_caption: 'flower pot crafts',
          ),
          Category(
            image_location: 'assets/images/img_6.png',
            image_caption: 'cloth crafts ',
          ),
          Category(
            image_location: 'assets/images/img_11.png',
            image_caption: 'giftBox crafts',

          ),

        ],
      ),
    );
  }
}
class Category extends StatelessWidget {


  var image_location;
  var image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
        child:InkWell(
          onTap: (){},
          child:Container(
            width: 100.0,
            child: ListTile(
                title:Image.asset(image_location,
                    width: 100.0,
                    height: 100.0),
                subtitle:Container(
                  alignment: Alignment.topCenter,
                  child:Text(image_caption,style: TextStyle(color: Colors.black),),
                )
            ),
          ),));
  }}
