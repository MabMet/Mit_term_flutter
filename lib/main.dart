import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/routes/route.dart';
import 'package:mid_term_flutter_app/utilitys/detail_colors.dart';
import 'package:mid_term_flutter_app/views/splash_screen/splash_page.dart';

void main(){
  runApp(const MyRootApp());
}

class MyRootApp extends StatelessWidget {
  const MyRootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRoute,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          error: redColor,
        ),
      ),
    );
  }
}
