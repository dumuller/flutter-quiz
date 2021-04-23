import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  
  QuestionIndicatorWidget({this.currentPage, this.length});

  @override
  Widget build(BuildContext context) {    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão $currentPage"),
              Text("de $length"),
            ],
          ),
          SizedBox(height: 16,),
          ProgressIndicatorWidget(value: currentPage / length),
        ],
      ),
    );
  }
}