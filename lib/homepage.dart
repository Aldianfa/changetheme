import"package:flutter/material.dart";

import 'duapage.dart';

class homepage extends StatefulWidget {
  Function setTheme;
  homepage({Key? key, required this.setTheme}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isDarkmode = false;
  
  get setTheme => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Color.fromARGB(255, 207, 53, 51),

        actions: [
          Padding(padding: EdgeInsets.only(left: 50)),
          IconButton(
            icon: new Icon(Icons.sunny),
            onPressed: () {
              print('settings');
              
              isDarkmode = !isDarkmode;
              widget.setTheme(isDarkmode);
            },
          ),
          
        ],

        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            print('object');
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => duapage(setTheme: setTheme)));
          },
          child: Text('Pindah'),
        )
      ),
    );
  }
}