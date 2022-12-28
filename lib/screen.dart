import 'package:flutter/material.dart';
import 'classes/classes.dart';
import 'functions.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Mytext('BMW', TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/bmw3.jpg')),
              SizedBox(
                height: 8,
              ),
              text_in_row('Engine code', 'N74'),
              text_in_row('Configuration', 'V12 turbo'),
              Myrow()
            ],
          ),
        ));
  }
}
