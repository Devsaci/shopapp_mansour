import 'dart:html';

import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Products Screen',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
