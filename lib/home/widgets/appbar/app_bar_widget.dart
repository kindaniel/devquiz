import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/scorecard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Olá ',
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: 'Daniel Kin',
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                        style: AppTextStyles.title,
                      ),
                      Container(
                        width: 58,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/10221193?v=4",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(
                    0.0,
                    1.0,
                  ),
                  child: ScoreCardWidget(),
                )
              ],
            ),
          ),
        );
}
