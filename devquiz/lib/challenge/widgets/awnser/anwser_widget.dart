import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

class AnwserWidget extends StatelessWidget {
  final AnwserModel anser;
  final ValueChanged<bool> onTap;
  final bool isSelected;
  final bool disabled;
  AnwserWidget({@required this.anser, @required this.onTap, this.isSelected = false, this.disabled = false});

  Color get _selectedColorRight =>
      anser.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      anser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      anser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      anser.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      anser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => anser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: IgnorePointer(
            ignoring: disabled,
            child: GestureDetector(
            onTap: () {
              onTap(anser.isRight);
            },
            child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide(color: isSelected ? _selectedBorderCardRight : AppColors.border)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    anser.title,
                    style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,            
                  child: isSelected ? Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.white,
                  ) : null,
                  decoration: BoxDecoration(
                    color: isSelected ? _selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(500),
                    border:
                        Border.fromBorderSide(BorderSide(color: isSelected ? _selectedColorRight : AppColors.border)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
