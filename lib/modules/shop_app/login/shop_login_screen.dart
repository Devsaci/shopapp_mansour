import 'package:flutter/material.dart';

class ShopLoginScreen extends StatelessWidget {
  const ShopLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOGIN',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.black),
            ),
            Text(
              'Login now to browse our hot offers',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
