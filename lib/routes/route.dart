import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/views/login_register_screens/login_page.dart';
import 'package:mid_term_flutter_app/views/login_register_screens/register_screen.dart';
import 'package:mid_term_flutter_app/views/splash_screen/splash_Signup.dart';
import 'package:mid_term_flutter_app/views/splash_screen/splash_page.dart';

import '../views/home_screens/home_page.dart';
import '../views/home_screens/main_page.dart';

Route<dynamic>? appRoute(RouteSettings settings){
  switch(settings.name){
    case '/':
      return MaterialPageRoute(builder: (context)=>const MainPage());
    case '/main_page':
      return MaterialPageRoute(builder: (context)=>const MainPage());
    case '/splash':
      return MaterialPageRoute(builder: (context)=>const SplashPage());
    case '/register':
      return MaterialPageRoute(builder: (context)=>const RegisterPage());
    case '/login':
      return MaterialPageRoute(builder: (context)=>const LoginScreen());
    case '/splash_signup':
      return MaterialPageRoute(builder: (context)=>const SplashSignUpPage());
    default:
      return MaterialPageRoute(builder: (context)=> const MainPage());
  }
}