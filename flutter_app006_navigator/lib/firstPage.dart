import 'package:flutter/material.dart';
import 'package:flutterapp006navigator/secondPage.dart';

import 'data/person.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final person = Person('홍길동', 20);
          final result = await Navigator.pushNamed(context, '/secondPage');
          /*final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );*/
          print(result);
        },
      ),
    );
  }
}
