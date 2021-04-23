
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:devquiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnwserModel> awnser;

  QuestionModel({@required this.title, @required this.awnser}) : assert(
    awnser.length == 4,
  );

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnser': awnser?.map((x) => x.toMap())?.toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awnser: List<AnwserModel>.from(map['awnser']?.map((x) => AnwserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
