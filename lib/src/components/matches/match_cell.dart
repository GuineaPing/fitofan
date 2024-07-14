import 'package:flutter/material.dart';
import '../../resources/colors.dart';
import 'winner_badge.dart';

class MatchCell extends StatelessWidget {
  final int index;
  final String title0;
  final String title1;
  final bool isShowWinner;
  final bool isWinner0;

  const MatchCell(
      {super.key,
      required this.index,
      required this.title0,
      required this.title1,
      required this.isShowWinner,
      required this.isWinner0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 24,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.darkerGrey,
                ),
                child: Center(
                  child: Text(
                    '$index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 175,
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                    color: AppColors.darkerBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title0,
                          style: const TextStyle(fontSize: 12, color: AppColors.primary),
                        ),
                        Visibility(
                          visible: isShowWinner && isWinner0,
                          child: const WinnerBadge(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 175,
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                    color: AppColors.darkerRed,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title1,
                          style: const TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Visibility(
                          visible: isShowWinner && !isWinner0,
                          child: const WinnerBadge(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
