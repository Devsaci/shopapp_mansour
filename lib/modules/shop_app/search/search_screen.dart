
import 'package:flutter/material.dart';

class SearchScreen  extends StatelessWidget {
  const SearchScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search ShopScreen')),
      body: Center(
        child: Text('Search ShopScreen ', style: Theme.of(context).textTheme.bodyText1,),
      ),

    );
  }
}
