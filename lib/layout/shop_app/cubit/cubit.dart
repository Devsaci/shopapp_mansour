

import 'package:app_theme_mansour/layout/shop_app/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopStates>{
  ShopCubit(ShopStates initialState) : super(initialState);
  // ShopCubit() : super(ShopInitialState());
  static ShopCubit get(context) => BlocProvider.of(context);

}