import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/utilitys/detail_colors.dart';
import 'package:mid_term_flutter_app/views/home_screens/home_page.dart';
import 'package:mid_term_flutter_app/views/home_screens/profile_page.dart';
import 'package:mid_term_flutter_app/views/home_screens/trips_page.dart';
import 'package:mid_term_flutter_app/views/home_screens/wishlist_page.dart';

import 'booking_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const <Widget>[
          HomePage(),
          WishListPage(),
          TripsPage(),
          BookingPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: grayColor,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedFontSize: 12,
        unselectedItemColor: grayColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
