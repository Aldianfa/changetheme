import 'package:flutter/material.dart';

class duapage extends StatefulWidget {
  Function setTheme;
  duapage({Key? key, required this.setTheme}) : super(key: key);

  @override
  State<duapage> createState() => _duapageState();
}

class _duapageState extends State<duapage> {
  bool isDarkmode = false;

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
    );
  }
}