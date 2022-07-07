import 'package:aas_dimaskanjeng/style.dart';
import 'package:flutter/material.dart';

class MyHeader extends StatefulWidget {
  const MyHeader({Key? key}) : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('logos.jpg'),
              ),
            ),
          ),
          Text(
            'Dimas Sandya Nugraha',
            style: FontHeader,
          ),
          Text(
            '19.0504.0083',
            style: FontHeader,
          )
        ],
      ),
    );
  }
}
