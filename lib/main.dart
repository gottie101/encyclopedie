//Open cmd
//cd Desktop\flutter_windows_1.20.4-stable\projets
//git clone https://github.com/gottie101/encyclopedie.git

//Scott Le Clair
//2020-11-06

//Point de départ pour le projt encyclopedie
//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  
  Widget titre = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Neapolitan Icecream',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Text(
              'Frozen Dessert',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget description = Container(
  padding: const EdgeInsets.all(32),
  color: Colors.black,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 18, 
              color: Colors.white,
              fontFamily: 'Times New Roman',
              //fontWeight: FontWeight.bold,
              ),
            children: <TextSpan>[
              TextSpan(
                text: 'Neapolitan ice cream',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: ', also sometimes called '
              ),
              TextSpan(
                text: 'Harlequin ice cream',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: '\u00B2',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: ', is a type of ice cream composed of three separate flavors ('
              ),
              TextSpan(
                text: 'vanilla',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: ', ',
              ),
              TextSpan(
                text: 'chocolate',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: ' and '
              ),
              TextSpan(
                text: 'strawberry',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Times New Roman',
                )
              ),
              TextSpan(
                text: ') arranged side by side in the same container, usually without any packaging in between.'
              ),
            ]
          ),
        ), 
      ),
      Icon(
        Icons.edit_sharp,
        color: Colors.white,
      ),
    ],
  ),
);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frozen Desserts Wiki',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Stack (
              children: [
                Image.asset(
                  'images/mid-0.jpg',
                  width:360,
                  height:240,
                  fit:BoxFit.cover,
                ),
                Image.asset(
                  'images/vanila-ice-cream.jpg',
                  width:40,
                  height:40,
                  fit:BoxFit.cover,
                ),
              ]
            ),
            titre,
            description,
          ], 
        ),
      ),
    );
  }
}



/*Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.black,
            width: 500.0,
            height: 90.0,
            child: 
              Text(
                'Neapolitan ice cream, also sometimes called Harlequin ice cream, is a type of ice cream composed of three separate flavors (vanilla, chocolate and strawberry) arranged side by side in the same container, usually without any packaging in between.',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
          ),
          body: Column(
          children: [
            Image.asset(
              'images/mid-0.jpg',
              width:600,
              height:240,
              fit:BoxFit.cover,
              ),
            titre,
            soustitre,
            description,
          ], 
        ),
        also sometimes called Harlequin ice cream, is a type of ice cream composed of three separate flavors (vanilla, chocolate and strawberry) arranged side by side in the same container, usually without any packaging in between.',
          */