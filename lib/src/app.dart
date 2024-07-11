// lib/main.dart

import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/theme.dart';
import 'components/buttons.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themedata,
      home: const StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final String _displayText = "FitoFan view";
  Buttons buttons = Buttons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Scaffold(
        appBar: AppBar(
          leading: Center(child: SizedBox(height: 30, child: Image.asset('assets/images/fitofan_logo.png'))),
          leadingWidth: 135,
          actions: <Widget>[
            buttons.toolbarButton('Promo', 'promo', () {
              print('>> promo button pressed');
            }),
            buttons.toolbarButton('Matches', 'matches', () {
              print('>> matches button pressed');
            }),
            buttons.toolbarButton('Judges', 'judges', () {
              print('>> judges button pressed');
            }),
            buttons.toolbarButton('Screen', 'screen', () {
              print('>> screen button pressed');
            }),
            buttons.toolbarButton('Settings', 'settings', () {
              print('>> settings button pressed');
            }),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(children: [Text('Col 0')]),
                Column(children: [Text('Col 1')]),
                Column(children: [Text('Col 2')]),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
