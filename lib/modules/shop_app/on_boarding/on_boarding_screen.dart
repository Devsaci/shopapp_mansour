
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnBoardingScreen'),
      ),
      body:   Column(
        children: [
          PageView.builder(
            itemBuilder: (context, index) => buildBoardingItem(),
            itemCount: 3,
          ),
        ],
      ),
    );
  }

  Widget buildBoardingItem() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(
            child: Image(
              image: AssetImage('assets/images/onboard_1.jpg'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Screen Title}',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Screen Body',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      );
}
