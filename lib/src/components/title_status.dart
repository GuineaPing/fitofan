import 'package:flutter/material.dart';
import '../resources/colors.dart';

class TitleStatus extends StatelessWidget {
  final int no;
  final String title;

  const TitleStatus({super.key, required this.no, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 18),
          child: Text('#$no',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.lighterGrey)),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.lightGrey),
        ),
      ],
    );
  }
}
