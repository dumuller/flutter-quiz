import 'package:flutter/cupertino.dart';

class AnwserModel {
    final String title;
    final bool isRight;

    AnwserModel({@required this.title, this.isRight = false});
}