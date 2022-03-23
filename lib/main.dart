// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:app_theme_mansour/layout/news_app/cubit/cubit.dart';
import 'package:app_theme_mansour/layout/news_app/cubit/states.dart';
import 'package:app_theme_mansour/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import 'layout/news_app/news_layout.dart';
import 'layout/shop_app/cubit/cubit.dart';
import 'layout/shop_app/shop_layout.dart';
import 'modules/shop_app/login/shop_login_screen.dart';
import 'modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'shared/bloc_observer.dart';
import 'shared/network/remote/dio_helper.dart';
import 'shared/styles/themes.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      DioHelper.init();
      await CacheHelper.init();
      bool? isDark = CacheHelper.getData(key: 'isDark');
      Widget widget;
      bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
      String? token = CacheHelper.getData(key: 'token');
      if(onBoarding != null)
      {
        if(token != null) {
          widget = ShopLayout();
        } else {
          widget = ShopLoginScreen();
        }
      } else
      {
        widget = OnBoardingScreen();
      }

      runApp(MyApp(
        isDark: isDark,
        startWidget: widget ,
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  final Widget?  startWidget;

  MyApp({
    required this.isDark,
    required this.startWidget,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => NewsCubit()
            ..getBusiness()
            ..getSports()
            ..getScience()
            ..changeAppMode(fromShared: isDark),
        ),
        BlocProvider(
          create: (BuildContext context) => ShopCubit(),
        ),
      ],
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: NewsCubit.get(context).isDark
                ? ThemeMode.light
                : ThemeMode.dark,
            // home: onBoarding ? ShopLoginScreen() : OnBoardingScreen(),
            home: startWidget,
            // home: NewsLayout(),
          );
        },
      ),
    );
  }
}
