import 'package:cofeeapp/screens/cartscreen.dart';
import 'package:cofeeapp/screens/homescreen.dart';
import 'package:cofeeapp/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RoundedBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const RoundedBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xff262626),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Get.to(HomeScreen(),
              transition: Transition.fade,
              ),
              child: 
              Icon(Iconsax.home)
              ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Get.to(CartScreen(),
              transition: Transition.fade,
              ),
              child: 
              Icon(Iconsax.shopping_bag)
              ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Get.to(ProfileScreen(),
              transition: Transition.fade,
              ),
              child: 
              Icon(Iconsax.user)
              ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
