import 'package:app_theme_mansour/modules/shop_app/login/cubit/states.dart';
import 'package:bloc/bloc.dart';

class  ShopLoginCubit extends Cubit<ShopLoginStates>{
  // ShopLoginCubit(ShopLoginStates initialState) : super(initialState);
  ShopLoginCubit() : super(ShopLoginInitialState());

}