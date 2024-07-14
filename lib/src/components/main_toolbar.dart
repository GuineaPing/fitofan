import 'package:flutter/material.dart';
import '../components/buttons/toolbar_button.dart';
import '../types/toolbar_actions_type.dart';

typedef ToolBarCallback = void Function(ToolBarActionsType action);

class MainToolbar extends StatelessWidget {
  final ToolBarCallback onPressed;

  const MainToolbar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ToolbarButton(
            title: 'Promo',
            imageName: 'promo',
            onPressed: () {
              onPressed(ToolBarActionsType.propmo);
            }),
        ToolbarButton(
            title: 'Matches',
            imageName: 'matches',
            onPressed: () {
              onPressed(ToolBarActionsType.matches);
            }),
        ToolbarButton(
            title: 'Judges',
            imageName: 'judges',
            onPressed: () {
              onPressed(ToolBarActionsType.judges);
            }),
        ToolbarButton(
            title: 'Screen',
            imageName: 'screen',
            onPressed: () {
              onPressed(ToolBarActionsType.screen);
            }),
        ToolbarButton(
            title: 'Settings',
            imageName: 'settings',
            onPressed: () {
              onPressed(ToolBarActionsType.settings);
            }),
      ],
    );
  }
}
