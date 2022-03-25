

import 'package:flutter/material.dart';

class SearchScreen  extends StatelessWidget {
  const SearchScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search ShopScreen ', style: Theme.of(context).textTheme.bodyText1,),
    );
  }
}
