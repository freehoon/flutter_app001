import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/person.dart';

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Second Page'),
      ),
      body: CupertinoButton(
        child: Text('이전 페이지로'),
        onPressed: (){
          Navigator.pop(context, 'Ok');
        },
      ),
    );
  }
}
