import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/views/splash_screen/splash_Signup.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      final route = MaterialPageRoute(
          builder: (BuildContext context) => const SplashSignUpPage());
      Navigator.of(context).pushReplacement(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              const SizedBox(
                height: 250,
              ),
              Text(
                'Welcome Maan Hotel',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 23,
                ),
              ),
              Text(
                'Version 1.0.0',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
