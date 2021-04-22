import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading40,
          ),
          SizedBox(
            height: 16,
          ),
          AwnserWidget(title: "Possibilita a criação de aplicativos compilados nativamente", isRight: true, isSelected: true,),
          AwnserWidget(title: "Possibilita a criação de aplicativos compilados nativamente",),
          AwnserWidget(title: "Possibilita a criação de aplicativos compilados nativamente",),
          AwnserWidget(title: "Possibilita a criação de aplicativos compilados nativamente",),
        ],
      ),
    );
  }
}
