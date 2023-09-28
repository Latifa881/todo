import 'package:examples_application/Theme/CustomColors.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding(
      {super.key,
      required this.imageIndex,
      required this.title,
      required this.description});

  int imageIndex;
  String title;
  String description;

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<String> imagesPath = [
    'assets/images/manage_tasks.png',
    'assets/images/create_routine.png',
    'assets/images/organize_tasks.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'SKIP',
                  style: TextStyle(color: CustomColors.greyText),
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.imageIndex < imagesPath.length
                        ? Image.asset(imagesPath[widget.imageIndex])
                        : Image.asset(imagesPath[0]),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            color: CustomColors.titleText, fontSize: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Text(
                        widget.description,
                        style: TextStyle(
                            color: CustomColors.titleText, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'BACK',
                    style: TextStyle(color: CustomColors.greyText),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.primaryPurple),
                    onPressed: () {},
                    child: Text('NEXT'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
