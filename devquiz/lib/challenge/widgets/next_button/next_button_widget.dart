import 'package:flutter/material.dart';

import 'package:devquiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  NextButtonWidget({
    @required this.label,
    @required this.backgroundColor,
    @required this.fontColor,
    @required this.borderColor,
    @required this.onTap,
  });

  NextButtonWidget.green({@required String label, @required voidCallback})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen,
        this.onTap = voidCallback,
        this.label = label;

  NextButtonWidget.white({@required String label, @required voidCallback})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.onTap = voidCallback,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: MaterialStateProperty.all(BorderSide(
            color: borderColor,
          )),
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
        ),
        onPressed: onTap,
        child: Text(label, 
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600,
              color: fontColor,
            ),
          ),
      ),
    );
  }
}
