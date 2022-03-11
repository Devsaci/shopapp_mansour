import 'package:app_theme_mansour/modules/shop_app/login/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  ShopLoginCubit extends Cubit<ShopLoginStates>{
  // ShopLoginCubit(ShopLoginStates initialState) : super(initialState);
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

}