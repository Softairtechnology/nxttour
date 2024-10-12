import 'package:clothing_trial/home_screen/widgets/brand_add.dart';
import 'package:clothing_trial/home_screen/widgets/categories.dart';
import 'package:clothing_trial/home_screen/widgets/footer.dart';
import 'package:clothing_trial/home_screen/widgets/header_widget.dart';
import 'package:clothing_trial/home_screen/widgets/image_add_widget.dart';
import 'package:clothing_trial/home_screen/widgets/offers.dart';
import 'package:clothing_trial/home_screen/widgets/sale_widget.dart';
import 'package:clothing_trial/home_screen/widgets/summer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home1.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/heart.png', width: 24, height: 24),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/shopping_cart.png',
                width: 24, height: 24),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon:
                Image.asset('assets/icons/profile.png', width: 24, height: 24),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              ImageAdd(),
              Sale(),
              Categories(),
              Offers(),
              BrandAdd(),
              Summer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
