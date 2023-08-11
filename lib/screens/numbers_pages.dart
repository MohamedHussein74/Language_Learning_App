import 'package:flutter/material.dart';
import 'package:toku_app/componets/ListItem.dart';

import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<item> numbers = const [
    item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'Mittsu',
        enName: 'Three'),
    item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four'),
    item(
      sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    item(
      sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six'),
    item(
      sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    item(
      sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    item(sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'Nine'),
    item(
      sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          print(num);
          return ListItem(
            itemtype: 'numbers',
            number: numbers[index],
          color: Color.fromARGB(255, 170, 140, 96),
          );
        },
      ),
    );
  }

  List<Widget> getlist(List<item> numbers) {
    List<ListItem> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(ListItem(
        itemtype: 'numbers',
        number: numbers[i],
      color:Color.fromARGB(255, 82, 203, 86) ,
      ));
    }
    return itemsList;
  }
}
