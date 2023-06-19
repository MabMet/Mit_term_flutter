import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/utilitys/detail_colors.dart';

import '../../widgets/custom_text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController emailController;
  late final TextEditingController passController;
  late final TextEditingController fullNameController;
  late final GlobalKey<FormState> globalKey;

  @override
  void initState() {
    emailController = TextEditingController();
    passController = TextEditingController();
    fullNameController = TextEditingController();
    globalKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Let\'s us know what your name, email, ',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('and your password',style: TextStyle(
                    fontSize: 17,
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(
              controller: fullNameController,
              hintText: 'Enter your Full name',
              labelText: 'Full Name',
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
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Confirm your email. Standard message and data retest apply.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                  Navigator.of(context).pushNamed('/main_page');
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
          ],
        ),
      ),
    );
  }
}
