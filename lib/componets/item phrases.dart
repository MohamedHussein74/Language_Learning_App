import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrases.dart';

class finalitem extends StatelessWidget {
  const finalitem({super.key, Key, required this.number, 
  required this.color,
   required this.itemtype});
  
  final item_phrases number;
  final Color color;
  final String itemtype;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      
      
      child: Row(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                AudioCache player = AudioCache(prefix:'assets/images/sounds/$itemtype/' );
                player.play(number.sound);
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}
