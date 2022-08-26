import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function onPressed;

  AdaptativeButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label!),
            onPressed: () => onPressed(),
            color: Theme.of(context).primaryColor,
          )
        : RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).textTheme.button?.color,
            child: Text(label!),
            onPressed: () => onPressed(),
          );
  }
}