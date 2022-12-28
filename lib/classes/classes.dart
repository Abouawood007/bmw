import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  String _text;
  TextStyle _textStyle;

  Mytext(this._text, this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
    );
  }
}

class Myrow extends StatelessWidget {
  Myrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Mytext('Fuel system',
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 3,
              ),
              Mytext('Direct injection',
                  TextStyle(color: Colors.white, fontSize: 15))
            ],
          ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Direct injection'),
                        content: Text(
                            'an injector sprays fuel directly into the combustion chamber in an engine with direct injection'),
                      );
                    });
              },
              child: Icon(
                Icons.question_mark_outlined,
                color: Colors.white,
                size: 17, 
              ))
        ],
      ),
    );
  }
}
