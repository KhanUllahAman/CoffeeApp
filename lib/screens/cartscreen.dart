import 'package:cofeeapp/screens/homescreen.dart';
import 'package:cofeeapp/screens/widgets/cart_cards_widgets.dart';
import 'package:cofeeapp/screens/widgets/cart_textfield.dart';
import 'package:cofeeapp/screens/widgets/total_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e8e8),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffe8e8e8),
        surfaceTintColor: Color(0xffe8e8e8),
        toolbarHeight: 80,
        title: Text(
          "Cart",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(HomeScreen());
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffdddddd),
            ),
            child: IconButton(
              icon: Icon(
                Iconsax.trash,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Cart_widget(
            imagePath1: 'assets/images/product4.png',
            myText1: 'Cafe packages',
            myText2: 'Coffee Beans',
            price: '\$20.95',
            quantity: '1',
          ),
          SizedBox(height: 7),
          Cart_widget(
            imagePath1: 'assets/images/product5.png',
            myText1: 'Cafe packages',
            myText2: 'Honey Coffee Beans',
            price: '\$10.95',
            quantity: '2',
          ),
          SizedBox(height: 15),
          CartTextFeild(),
          SizedBox(height: 20),
          total_card(),
          SizedBox(height: 50), // Add some space between the total_card and the ElevatedButton
          SizedBox(
            width: 350,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff262626),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
