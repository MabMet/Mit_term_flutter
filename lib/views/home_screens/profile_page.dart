import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/utilitys/detail_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Positioned(
                    top: 70,
                    right: 165,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 150,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 120,
                      ),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Yanik Korim',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'yanikkorim@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: grayColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      'Account Setting',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: orangeColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.note_alt_outlined,
                        color: orangeColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: blueColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.payment,
                        color: blueColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: Row(
                      children: [
                        const Text('Notification',style: TextStyle(fontSize: 20,),),
                        const SizedBox(width: 90,),
                        Text(isSwitchedOn ? 'On':'Off'),
                        Switch(
                          activeColor: orangeColor,
                          value: isSwitchedOn,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitchedOn = value;
                            },);
                          },
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundColor: redColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.notifications_none,
                        color: redColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Row(
                      children: const [
                        Text(
                          'Language',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 120,),
                        Text('English',style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundColor: greenColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.language,
                        color: greenColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      'Account Setting',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Message',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: redColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.messenger_outline,
                        color: redColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Give Us Feedback',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: orangeColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.send,
                        color: orangeColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Terms of Service',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: blueColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.error_outline,
                        color: blueColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: grayColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.quiz_outlined,
                        color: grayColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    title: const Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: orangeColor.withOpacity(0.3),
                      child: const Icon(
                        Icons.logout,
                        color: orangeColor,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
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
