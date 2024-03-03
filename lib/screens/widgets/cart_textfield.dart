import 'package:flutter/material.dart';

class CartTextFeild extends StatelessWidget {
  const CartTextFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7, // Adjust the width as needed
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Promo Code',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
          ),
        ),
        SizedBox(width: 10), // Add some spacing between TextField and ElevatedButton
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff262626),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              'Apply',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
