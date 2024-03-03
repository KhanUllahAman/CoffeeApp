import 'package:cofeeapp/screens/card/product_title_text.dart';
import 'package:cofeeapp/screens/card/rounded_container.dart';
import 'package:cofeeapp/screens/card/rounded_image.dart';
import 'package:cofeeapp/screens/card/shadows.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FeaturedCardscreen extends StatelessWidget {
  const FeaturedCardscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 288,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (_, index) {
            // Generate unique data for each card
            final imageUrls = [
              'assets/images/product4.png',
              'assets/images/product5.png',
              'assets/images/product6.png',
              'assets/images/product7.png',
              'assets/images/product8.png',
              'assets/images/product9.png',
            ];
            final titles = [
              'Mint Coffee',
              'Vanilla Latte',
              'Caramel Macchiato',
              'Espresso Shot',
              'Iced Mocha',
              'Pumpkin Spice Latte',
            ];
            final ratings = ['4.5', '4.2', '4.7', '4.0', '4.8', '4.4'];
            final soldQuantities = [50, 30, 45, 20, 60, 40];
            final prices = [20, 25, 18, 15, 22, 27];

            return FeaturedCard(
              imageurl: imageUrls[index],
              sold: soldQuantities[index],
              brand: 'Starbucks',
              title: titles[index],
              price: prices[index],
              ratingtext: ratings[index],
            );
          },
        ),
      ),
    );
  }
}




class FeaturedCard extends StatefulWidget {
  final String imageurl;
  final String title;
  final int sold;
  final int price;
  final String brand;
  final String ratingtext;
  final String currencySign;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;



  const FeaturedCard({
    super.key,
    required this.imageurl,
    required this.sold,
    required this.brand,
    required this.title,
    required this.price,
    required this.ratingtext,
    this.currencySign = '\$',
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
  });

  @override
  State<FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 280,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          RoundedContainer(
            height: 150,
            padding: const EdgeInsets.all(8),
            backgroundColor: Color(0xffe8e8e8),
            child: Stack(
              children: [
                /// Thumbnail Image
                RoundedImage(
                  imageUrl: widget.imageurl,
                  width: 200,
                  height: 200,
                ),

                /// Sale Tag
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                            .withOpacity(0.9), // Change color as needed
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        isFavorite ? Iconsax.heart5 : Iconsax.heart,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                  ),
                ),

                /// Favorite Icon Button
              ],
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          /// Details
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTitleText(
                  title: widget.title,
                  smallSize: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "⭐ ${widget.ratingtext} | Solds ${widget.sold}",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    // SizedBox(
                    //   width: 4,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ProductPriceText(
                    //   price: '\100',
                    // ),
                    Text('\$${widget.price}',
                        maxLines: widget.maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: widget.isLarge
                            ? TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)
                                .apply(
                                    decoration: widget.lineThrough
                                        ? TextDecoration.lineThrough
                                        : null)
                            : TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)
                                .apply(
                                    decoration: widget.lineThrough
                                        ? TextDecoration.lineThrough
                                        : null)),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff262626),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(16))),
                        child: SizedBox(
                            width: 60.4,
                            height: 63.6,
                            child: Center(
                                child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
