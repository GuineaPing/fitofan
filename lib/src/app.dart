// lib/main.dart

import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/theme.dart';
import 'components/toolbar_button.dart';
import 'components/navigate_button.dart';

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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Scaffold(
        appBar: AppBar(
          leading: Center(child: SizedBox(height: 30, child: Image.asset('assets/images/fitofan_logo.png'))),
          leadingWidth: 135,
          actions: <Widget>[
            ToolbarButton(
                title: 'Promo',
                imageName: 'promo',
                onPressed: () {
                  print('>> promo button pressed');
                }),
            ToolbarButton(
                title: 'Matches',
                imageName: 'matches',
                onPressed: () {
                  print('>> matches button pressed');
                }),
            ToolbarButton(
                title: 'Judges',
                imageName: 'judges',
                onPressed: () {
                  print('>> judges button pressed');
                }),
            ToolbarButton(
                title: 'Screen',
                imageName: 'screen',
                onPressed: () {
                  print('>> screen button pressed');
                }),
            ToolbarButton(
                title: 'Settings',
                imageName: 'settings',
                onPressed: () {
                  print('>> settings button pressed');
                }),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Column(children: [
                    NavigateButton(
                        title: 'Previous',
                        isBack: true,
                        onPressed: () {
                          print('>> navigate previous');
                        })
                  ]),
                  const Column(children: [Text('Col 1')]),
                  Column(children: [
                    NavigateButton(
                        title: 'Next',
                        isBack: false,
                        onPressed: () {
                          print('>> navigate next');
                        })
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
