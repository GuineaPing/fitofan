import 'package:flutter/material.dart';
import 'match_cell.dart';

class Matches extends StatelessWidget {
  final List<String> items;
  final int baseInd;
  final bool isShowWinner;

  const Matches({super.key, required this.items, this.baseInd = 1, this.isShowWinner = true});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MatchCell(
          index: index + baseInd,
          title0: items[index],
          title1: items[index],
          isShowWinner: isShowWinner,
          isWinner0: true,
        );
      },
    );
  }
}
