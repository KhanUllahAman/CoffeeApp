import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyTextFeild extends StatelessWidget {
  const MyTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Iconsax.search_favorite),
              onPressed: () {},
            ),
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
        ),
      ),
    );
  }
}
