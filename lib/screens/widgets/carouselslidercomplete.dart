import 'package:carousel_slider/carousel_slider.dart';
import 'package:cofeeapp/screens/widgets/mycarousels.dart';
import 'package:flutter/material.dart';

class MyCarouselSlidersComplete extends StatelessWidget {
  const MyCarouselSlidersComplete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true
      ),
      items: [
        MyCarousels(
          imagePath: "assets/images/product.png",
          MybackgroundColor1: Colors.blue.shade800,
          MybackgroundColor: const Color.fromARGB(255, 203, 226, 246),
          title: "Discount Sales",
          description: "Get your favorite coffee with a 20% discount!",
        ),
        MyCarousels(
          imagePath: "assets/images/product2.png",
           MybackgroundColor1: Color(0xffff822b),
          MybackgroundColor: Color(0xfffff5ed),
          title: "Best Offer",
          description: "Get your favorite Drink with a 50% off!",
        ),
        MyCarousels(
          imagePath: "assets/images/product3.png",
          MybackgroundColor1: Colors.red.shade800,
          MybackgroundColor: Color.fromARGB(255, 242, 190, 186),
          title: "Own Offer",
          description: "Create your own favorite offer in 30% off!",
        ),
      ],
    );
  }
}