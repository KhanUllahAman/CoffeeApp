import 'package:cofeeapp/controller/navigation_controller.dart';
import 'package:cofeeapp/screens/widgets/rounded_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
    final HomeController controller = Get.put(HomeController());

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e8e8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffe8e8e8),
        surfaceTintColor: Color(0xffe8e8e8),
        toolbarHeight: 80,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Iconsax.notification,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Iconsax.setting,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage('assets/images/img.jpg'), // Set your image here
            ),
            title: Text(
              'Aman Khan',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              '1122khanaman@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Iconsax.edit), // Choose an appropriate icon
              onPressed: () {
                // Add functionality for editing profile
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Iconsax.copy_success),
            title: Text('My Orders',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
          ListTile(
            leading: Icon(Iconsax.heart),
            title: Text('Wish List',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
          ListTile(
            leading: Icon(Iconsax.bag_timer),
            title: Text('Browsing History',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              Iconsax.home,
            ),
            title: Text("Saved Address"),
          ),
          ListTile(
            leading: Icon(
              Iconsax.card,
            ),
            title: Text("Payment"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              Iconsax.truck,
            ),
            title: Text("Shipping & Payment"),
          ),
          ListTile(
            leading: Icon(
              Iconsax.refresh,
            ),
            title: Text("Refund Policy"),
          ),

          GestureDetector(
            onTap: (){},
            child: ListTile(
              leading: Icon(
                Iconsax.logout,
              ),
              title: Text("Logout"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        init: controller,
        builder: (controller) => RoundedBottomNavigationBar(
          currentIndex: controller.selectedIndex
              .value,
          onTap: controller.changeIndex,
        ),
      ),
    );
  }
}
