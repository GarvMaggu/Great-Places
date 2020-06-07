import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          height: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Text('No Image Taken'),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        FlatButton.icon(
            icon: Icon(Icons.camera),
            label: Text('Take Picture', textAlign: TextAlign.center,),
            textColor: Theme.of(context).primaryColor,
            onPressed: null,
            ),
      ],
    );
  }
}
