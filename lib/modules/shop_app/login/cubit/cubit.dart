import 'package:app_theme_mansour/models/shop_app/login_model.dart';
import 'package:app_theme_mansour/modules/shop_app/login/cubit/states.dart';
import 'package:app_theme_mansour/shared/network/end_points.dart';
import 'package:app_theme_mansour/shared/network/remote/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  // ShopLoginCubit(ShopLoginStates initialState) : super(initialState);
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);
  ShopLoginModel? loginModel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(ShopLoginLoadingState());
    DioHelper.postData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then(
      (value) {
        print(value.data);
        loginModel = ShopLoginModel.fromJson(value.data);
        emit(ShopLoginSuccessState(loginModel!));
        // print('////////loginModel?.data.token////////');
        // print(loginModel?.data.token);
        // print('////////loginModel?.status////////');
        // print(loginModel?.status);
        // print('////////loginModel?.message////////');
        // print(loginModel?.message);
        // print(value.data['message']);
      },
    ).catchError((error) {
      print(error.toString());
      emit(ShopLoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShopChangePasswordVisibilityState());
  }
}
