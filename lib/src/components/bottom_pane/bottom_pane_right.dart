import 'package:flutter/material.dart';
import '../../resources/colors.dart';

class BottomPaneRight extends StatelessWidget {
  final int roundNo;
  final String time;

  const BottomPaneRight({super.key, required this.roundNo, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Round $roundNo',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.brown, fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Text(
                  time,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.brown,
                    fontSize: 52,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
