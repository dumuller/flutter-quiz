
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:flutter/cupertino.dart';

class QuestionModel {
  final String title;
  final List<AnwserModel> awnser;

  QuestionModel({@required this.title, @required this.awnser}) : assert(
    awnser.length == 4,
  );
}