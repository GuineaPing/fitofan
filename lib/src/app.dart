// lib/main.dart

import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/theme.dart';
import 'components/buttons/navigate_button.dart';
import 'components/buttons/command_button.dart';
import 'components/main_toolbar.dart';
import 'components/labels/navigate_label.dart';
import 'components/labels/match_info.dart';
import 'components/title_status.dart';
import 'components/competitor.dart';
import 'components/bottom_pane/bottom_pane.dart';
import 'components/matches/matches.dart';

// import 'resources/colors.dart';

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
      padding: const EdgeInsets.only(left: 35, right: 40),
      child: Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child:
                  Center(child: SizedBox(height: 35, width: 130, child: Image.asset('assets/images/fitofan_logo.png'))),
            ),
            leadingWidth: 120,
            actions: <Widget>[
              MainToolbar(onPressed: (action) {
                print(">> $action");
              })
            ]),
        body: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double sideColumnWidth = screenWidth * 0.20;
            double screenHeight = constraints.maxHeight;
            double sideListHeight = screenHeight * 0.65;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: sideColumnWidth,
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  NavigateButton(
                                      title: 'Previous',
                                      isBack: true,
                                      onPressed: () {
                                        print('>> navigate previous');
                                      }),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const NavigateLabel(title: 'Previous'),
                                  SizedBox(
                                      height: sideListHeight,
                                      child: Matches(items: List.generate(10, (index) => 'Zhou Emma'))),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  CommandButton(
                                      title: "Show on TV",
                                      onPressed: () {
                                        print('>> show on tv');
                                      })
                                ]),
                          ),
                          const Expanded(
                            child: SizedBox(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                          height: 55,
                                          child: TitleStatus(no: 5, title: 'Day 1, Dojang 1, №1 All. Poomsae')),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Competitor(
                                        firstName: 'Shirin',
                                        lastName: 'Shirinov',
                                        image: 'competitor0',
                                        combat: 'Poomsae Ukrainian Federation',
                                        coach: 'Чебан (Cheban) В.',
                                        first: true,
                                      ),
                                      Competitor(
                                        firstName: 'Shirin',
                                        lastName: 'Shirinov',
                                        image: 'competitor1',
                                        combat: 'Poomsae Ukrainian Federation',
                                        coach: 'Чебан (Cheban) В.',
                                        first: false,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: BottomPane(),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sideColumnWidth,
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  NavigateButton(
                                      title: 'Next',
                                      isBack: false,
                                      onPressed: () {
                                        print('>> navigate next');
                                      }),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const NavigateLabel(title: 'Next'),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                                    child: MatchInfo(weight: '50kg', gender: 'Male', masterOf: 'Yellow Belt'),
                                  ),
                                  SizedBox(
                                      height: sideListHeight,
                                      child: Matches(
                                        items: List.generate(10, (index) => 'Zhou Emma'),
                                        baseInd: 6,
                                        isShowWinner: false,
                                      )),
                                ]),
                          ),
                        ]),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
