 import 'package:flutter/material.dart';
import 'package:toku_app/componets/ListItem.dart';
import 'package:toku_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

final List<item> colors = const [
    item(
      sound: 'black.wav',
      image:  'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    item(
      sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppi kiiro',
        enName: 'dusty yellow'),
     
    item(
      sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    item(
      sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    item(
      sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kirro',
        enName: 'yellow'),
        item(
      sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          
          return ListItem(
            itemtype:'colors' ,
            number: colors[index],
          color: Color.fromARGB(255, 188, 180, 172),
          );
        },
      ),
    );
  }
}