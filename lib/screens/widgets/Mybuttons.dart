import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final String title;
  final String titlestring;
  const Mybuttons({
    super.key, required this.title, required this.titlestring,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff262626),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(child: Text(titlestring, style: TextStyle(fontSize: 20),)),
              
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
              
            ),
          ],
        ),
      ),
    );
  }
}