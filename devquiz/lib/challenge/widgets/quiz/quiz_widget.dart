import 'package:devquiz/challenge/widgets/awnser/anwser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;
  QuizWidget({this.question, this.onSelected});

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnwserModel anwsers(int index) => widget.question.awnser[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.question.title,
            style: AppTextStyles.heading40,
          ),
          SizedBox(
            height: 16,
          ),
          for(var i = 0; i < widget.question.awnser.length; i++)
          AnwserWidget(
            anser: anwsers(i),
            isSelected: indexSelected == i,
            disabled: indexSelected != -1,
            onTap: (value) {
              indexSelected = i;
              setState(() {
                
              });
              Future.delayed(Duration(seconds: 1)).then((_) {
                widget.onSelected(value);
              });
            },
          ),
        ],
      ),
    );
  }
}
