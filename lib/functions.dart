import 'package:flutter/material.dart';
import 'classes/classes.dart';

text_in_row(String a, String b) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(
                a, TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 3,
            ),
            Mytext(b, TextStyle(color: Colors.white, fontSize: 15))
          ],
        )
      ],
    ),
  );
}
