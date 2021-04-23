import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int rights;

  const ResultPage({
    Key key,
    @required this.title,
    @required this.length,
    @required this.rights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = (rights / length) * 100;
    print(percent);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(AppImages.illustration),
            ),
            Column(
              children: [
                Text(
                  percent == 100 ? "Parabéns!" : "Quase lá!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                      text: "Você concluiu",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                          text: "\n$title",
                          style: AppTextStyles.bodyBold,
                        ),
                        TextSpan(
                          text: "\ncom $rights acertos de $length!",
                          style: AppTextStyles.body,
                        ),
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children: [
                      Expanded(
                        child: NextButtonWidget.purple(
                            label: "Compartilhar", onTap: () {
                              Share.share("DevQuiz NLW 5 - Flutter: Meu Resultado.\nObtive ${percent.floor()}% de aproveitamento!");
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children: [
                      Expanded(
                        child: NextButtonWidget.transparent(
                            label: "Voltar ao início", onTap: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
