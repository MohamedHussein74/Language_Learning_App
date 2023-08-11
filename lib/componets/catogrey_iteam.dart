 import 'package:flutter/material.dart';
 
 class categroy extends StatelessWidget {
   categroy( {this.text,this.color,this.onTap});
final String? text;
 final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
                height: 60,
    
                child: Padding(
                  padding:  EdgeInsets.only(left:30,top: 18),
                  child: Text(
                    text!,
                    style: TextStyle(
                      color: Colors.white,
                  fontSize: 20
                  ) ,),
                ) ,
                color: color,
              ),
    );
  }
}