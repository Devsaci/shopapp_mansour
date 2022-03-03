// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  late final String image;
  late final String title;
  late final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onboard_1.jpg',
      title: 'On Board 1 Title',
      body: 'On Board 1 Body',
    ),
    BoardingModel(
      image: 'assets/images/onboard_1.jpg',
      title: 'On Board 2 Title',
      body: 'On Board 2 Body',
    ),
    BoardingModel(
      image: 'assets/images/onboard_1.jpg',
      title: 'On Board 3 Title',
      body: 'On Board 3 Body',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnBoardingScreen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    boardController.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            model.title,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            model.body,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      );
}
