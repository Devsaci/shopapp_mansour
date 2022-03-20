import 'dart:html';

import 'package:app_theme_mansour/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salla'),
      ),
      body: TextButton(
        onPressed: (){
          CacheHelper.removeData(key: 'token').then((value) => null);
        },
        child: Text('SING OUT'),
      ),
    );
  }
}
