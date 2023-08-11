import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, Key, required this.number, required this.color, required this.itemtype});
  final item number;
  final Color color;
  final String itemtype;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      
      
      child: Row(
        children: [
          Container(
            
            
              color: Color.fromARGB(255, 196, 214, 165),
              child: Image.asset(number.image)),
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
