import 'package:app_theme_mansour/layout/shop_app/cubit/states.dart';
import 'package:app_theme_mansour/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/shop_app/home_model.dart';
import '../../../modules/shop_app/categories/categories_screen.dart';
import '../../../modules/shop_app/favorites/favorites_screen.dart';
import '../../../modules/shop_app/products/products_screen.dart';
import '../../../modules/shop_app/settings/settings_screen.dart';
import '../../../shared/components/constants.dart';
import '../../../shared/network/end_points.dart';

class ShopCubit extends Cubit<ShopStates> {
  // ShopCubit(ShopStates initialState) : super(initialState);

  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    ProductsScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

  late HomeModel homeModel;

  void getHomeData() {
    emit(ShopLoadingHomeDataState());
    DioHelper.getData(
      url: HOME,
      
      // 108. Build Shop Layout [2]
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      printFullText(homeModel.data?.banners[0].image);
      emit(ShopSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorHomeDataState());
    });
  }
}
