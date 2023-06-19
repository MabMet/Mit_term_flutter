import 'package:flutter/material.dart';

import '../../utilitys/detail_colors.dart';
import '../../widgets/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passController;
  late final GlobalKey<FormState> globalKey;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
    globalKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        leading: IconButton(
          splashRadius: 25,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: grayColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Sign in with you email and',style: TextStyle(
                    fontSize: 17,
                  ),),
                  SizedBox(height: 5,),
                  Text('password',style: TextStyle(
                    fontSize: 17,
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(
              controller: emailController,
              hintText: 'Enter your email met@gmail',
              labelText: 'Email',
            ),
            CustomTextFieldWidget(
              controller: passController,
              hintText: 'Enter your password 123',
              labelText: 'Password',
              textPass: true,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/homepage');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Forget password '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
