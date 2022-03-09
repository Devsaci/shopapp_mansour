import 'package:flutter/material.dart';

class ShopLoginScreen extends StatelessWidget {
  const ShopLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'LOGIN',
            style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
