import 'package:flutter/material.dart';
import 'package:toku_app/componets/item%20phrases.dart';
import 'package:toku_app/models/phrases.dart';

class Phrases_Page extends StatelessWidget {
  const Phrases_Page({super.key});
   final List<item_phrases> phrases = const [
    item_phrases(
        sound: 'are_you_coming.wav',
        enName: 'are you coming?',
        jpName: 'kuru no?'),
    item_phrases(
        sound: 'dont_forget_to_subscribe.wav',
        enName: 'dont forget to subscribe',
        jpName: 'touroku wo wasurenaide kudasai'),
    item_phrases(
        sound: 'how_are_you_feeling.wav',
        enName: 'how are you feeling ?',
        jpName: 'choushi wa dou desu ka?'),
    item_phrases(
        sound: 'i_love_anime.wav',
        enName: 'i love anime',
        jpName: 'anime ga suki desu'),
    item_phrases(
        sound: 'i_love_programming.wav',
        enName: 'i love programming',
        jpName: 'programming ga daisuki'),
    item_phrases(
        sound: 'programming_is_easy.wav',
        enName: 'programming is easy',
        jpName: 'programming wa kantan desu'),
    item_phrases(
        sound: 'what_is_your_name.wav',
        enName: 'what is your name',
        jpName: 'onamae wa nan desu ka'),
    item_phrases(
        sound: 'where_are_you_going.wav',
        enName: 'where are you going ?',
        jpName: 'doko ni ikimasu ka ?'),
    item_phrases(
        sound: 'yes_im_coming.wav',
        enName: 'yes im coming',
        jpName: 'hai, ikimasu'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return finalitem(
            itemtype: 'phrases',
            number: phrases[index],
            color: Color.fromARGB(255, 185, 181, 172),
          );
        },
      ),
    );
  }
}
