import 'package:e_commerce_app/Retailer/Category/category.dart';
import 'package:e_commerce_app/Retailer/Home/home_screen.dart';
import 'package:e_commerce_app/Retailer/Home/wishlist_screen/wishlist_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/profile_screen.dart';
// import 'package:e_commerce_app/Retailer/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Retailer/Search/search_screen.dart';

class BottomDashBoard extends StatefulWidget {
  final int initialIndex; // Added parameter to select screen on launch

  const BottomDashBoard({super.key, this.initialIndex = 0}); // Default index is 0 (Home)

  @override
  _BottomDashBoardState createState() => _BottomDashBoardState();
}

class _BottomDashBoardState extends State<BottomDashBoard> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(backButton:true,),
    WishlistScreen(backButton: false,),
    ProfileScreen(backButton: true,)
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // Set initial screen
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavIcon(String assetPath, int index) {
    bool isSelected = _selectedIndex == index;
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        isSelected ? Get.theme.primaryColor : Colors.grey.shade600,
        BlendMode.srcIn,
      ),
      child: Image.asset(assetPath, height: 28, width: 28, fit: BoxFit.contain),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: _buildNavIcon('assets/icons/home.png', 0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon('assets/icons/category.png', 1),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon('assets/icons/search.png', 2),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon('assets/icons/wishlist.png', 3),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon('assets/icons/profile.png', 4),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Get.theme.primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14,
          unselectedFontSize: 12,
        ),
      ),
    );
  }
}
