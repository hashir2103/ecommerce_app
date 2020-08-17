import 'package:flutter/material.dart';

class CommonWidget {
  static Widget label(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 5, bottom: 7),
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  static TextStyle textStyle() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  static dailogBox(context, text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(text),
          content: Text('Select the $text'),
          actions: [
            MaterialButton(
              child: Text('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
