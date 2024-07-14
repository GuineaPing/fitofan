import 'package:flutter/material.dart';
import 'bottom_pane_left.dart';
import 'bottom_pane_right.dart';

class BottomPane extends StatefulWidget {
  const BottomPane({super.key});

  @override
  BottomPaneState createState() => BottomPaneState();
}

class BottomPaneState extends State<BottomPane> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(child: LayoutBuilder(builder: (context, constraints) {
      double widgetWidth = constraints.maxWidth;
      return SizedBox(
        height: 125,
        child: Row(
          children: [
            // Left pane with buttons
            SizedBox(
              width: widgetWidth * 0.30,
              child: BottomPaneLeft(
                isChecked: isChecked,
                onToggle: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
            ),
            const SizedBox(width: 10),
            // Right pane with text
            const Expanded(
              child: BottomPaneRight(roundNo: 1, time: '01:29'),
            ),
          ],
        ),
      );
    }));
  }
}
