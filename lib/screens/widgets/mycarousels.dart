import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class MyCarousels extends StatelessWidget {
  final String imagePath;
  final Color MybackgroundColor;
  final Color MybackgroundColor1;
  final String title;
  final String description;

  const MyCarousels({
    required this.imagePath,
    required this.MybackgroundColor,
    required this.MybackgroundColor1,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffdddddd),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 35,
                    decoration: BoxDecoration(
                      color: MybackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Iconsax.star,
                          size: 15,
                          color: MybackgroundColor1,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          title,
                          style: TextStyle(color: MybackgroundColor1),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    description,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
