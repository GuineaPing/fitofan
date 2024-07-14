import 'package:flutter/material.dart';
import '../resources/colors.dart';
import '../components/buttons/competitor_button.dart';
import '../components/buttons/competitor_menu_button.dart';

class Competitor extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String image;
  final String combat;
  final String coach;
  final bool first;

  const Competitor(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.image,
      required this.combat,
      required this.coach,
      required this.first});

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/competitors/$image.png';
    return Center(child: LayoutBuilder(
      builder: (context, constraints) {
        double imageWidth = 150;
        double imagePadding = 10;
        double rowPadding = 5;
        double widgetWidth = constraints.maxWidth;
        double bodyWidth = widgetWidth - (imageWidth + imagePadding * 2 + rowPadding * 2) - 15;
        return Padding(
          padding: EdgeInsets.all(rowPadding),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: first
                  ? const LinearGradient(
                      colors: [AppColors.blue, AppColors.darkBlue],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft)
                  : const LinearGradient(
                      colors: [AppColors.red, AppColors.darkRed],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(imagePadding),
                  child: SizedBox(
                    width: imageWidth,
                    height: imageWidth,
                    child: Image(
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: imagePadding),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: bodyWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  '$firstName\n$lastName',
                                  style: const TextStyle(
                                      fontSize: 37, height: 1.15, letterSpacing: 0.1, fontWeight: FontWeight.w700),
                                ),
                              ),
                              Row(
                                children: [
                                  CompetitorButton(
                                    title: 'Penalty',
                                    onPressed: () {
                                      print('>> competitor action Penalty');
                                    },
                                  ),
                                  const SizedBox(width: 5),
                                  CompetitorMenuButton(onPressed: () {
                                    print('>> competitor action menu more');
                                  })
                                ],
                              )
                            ],
                          ),
                        ),
                        Text('Combat: $combat'),
                        Text('Coach: $coach')
                      ]),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
