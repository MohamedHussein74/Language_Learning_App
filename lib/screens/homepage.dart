import 'package:flutter/material.dart';
import 'package:toku_app/componets/catogrey_iteam.dart';
import 'package:toku_app/screens/colors%20page.dart';
import 'package:toku_app/screens/family%20members.dart';
import 'package:toku_app/screens/numbers_pages.dart';
import 'package:toku_app/screens/phrases%20page.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 216, 199),
        appBar: AppBar(
          title: const Text('Toku'),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            categroy(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Color.fromARGB(255, 170, 140, 96),
            ),
            categroy(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'Famliy Members',
              color: Color.fromARGB(255, 188, 181, 124),
            ),
            categroy(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color.fromARGB(255, 188, 180, 172),
            ),
            categroy(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Phrases_Page();
                }));
              },
              text: 'phrases',
              color: Color.fromARGB(255, 181, 196, 204),
            ),
          ],
        ),
      ),
    ));
  }
}
