import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _text = 'hello';
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text(
        _text,
        style: TextStyle(fontSize: 40),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _status = !_status;
          setState(() {
            if(_status){
              _text = 'World';
            } else {
              _text = 'Hello';
            }
          });
        },
        child: Icon(Icons.touch_app),
      ),
    );
  }
}
