import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/views/login_register_screens/login_page.dart';

import '../../utilitys/detail_colors.dart';

class SplashSignUpPage extends StatelessWidget {
  const SplashSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/hotel.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Let\'s get ',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: grayColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Image.asset('images/hotel.jpg'),
                  ),
                  Text(
                    ' started',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Login to your account below or signup',
                style: TextStyle(
                  color: grayColor,
                  fontSize: 20,
                ),
              ),
              const Text(
                'for an amazing experience',
                style: TextStyle(
                  color: grayColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/register');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 115,
                        vertical: 15,
                      ),
                      child: Text(
                        'Sing Up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  TextButton(
                    onPressed: () {
                      final route = MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen());
                      Navigator.of(context).push(route);
                    },
                    child: const Text('Login to'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
