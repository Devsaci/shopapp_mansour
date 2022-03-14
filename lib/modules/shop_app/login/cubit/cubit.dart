import 'package:app_theme_mansour/modules/shop_app/login/cubit/states.dart';
import 'package:app_theme_mansour/shared/network/end_points.dart';
import 'package:app_theme_mansour/shared/network/remote/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  // ShopLoginCubit(ShopLoginStates initialState) : super(initialState);
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    DioHelper.postData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then(
      (value) {
        print(value.data);
        emit(ShopLoginSuccessState());
      },
    );
  }
}
