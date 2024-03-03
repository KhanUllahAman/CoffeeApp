import 'package:cofeeapp/controller/navigation_controller.dart';
import 'package:cofeeapp/screens/card/featured_card.dart';
import 'package:cofeeapp/screens/widgets/MybuttonsComplete.dart';
import 'package:cofeeapp/screens/widgets/carouselslidercomplete.dart';
import 'package:cofeeapp/screens/widgets/mytextfeild.dart';
import 'package:cofeeapp/screens/widgets/rounded_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e8e8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffe8e8e8),
        surfaceTintColor: Color(0xffe8e8e8),
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Aman!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              'Find your best coffee',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 13,
                top: 0,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffff537d),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            MyCarouselSlidersComplete(),
            SizedBox(height: 25),
            MyTextFeild(),
            SizedBox(height: 25),
            Mybuttonscomplete(),
            SizedBox(height: 25),
            FeaturedCardscreen(),
          ],
        ),
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
