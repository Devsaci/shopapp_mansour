import 'package:app_theme_mansour/layout/shop_app/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/settings/settings_screen .dart';
import '../../../modules/shop_app/cateogries/categories_screen.dart';
import '../../../modules/shop_app/favorites/favorites_screen.dart';
import '../../../modules/shop_app/products/products_screen.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit(ShopStates initialState) : super(initialState);

  // ShopCubit() : super(ShopInitialState());
  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget>  _bottomScreens = [
     ProductsScreen(),
     CategoriesScreen(),
     FavoritesScreen(),
     SettingsScreen(),
  ];
// Encapsulate field
  List<Widget> get bottomScreens => _bottomScreens;

  set bottomScreens(List<Widget> bottomScreens) {
    _bottomScreens = bottomScreens;
  }

}
