import 'package:flutter/material.dart';

class total_card extends StatelessWidget {
  const total_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Shipping", style: TextStyle(fontSize: 16, color: Colors.grey),),
                    Text("--------------------------------------------------", style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Text("\$4.95", style: TextStyle(fontSize: 18, color: Colors.black),)
                  ],
                ),
                SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Subtotal", style: TextStyle(fontSize: 16, color: Colors.grey),),
                    Text("--------------------------------------------------", style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Text("\$49.95", style: TextStyle(fontSize: 18, color: Colors.black),)
                  ],
                ),
                SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 16, color: Colors.grey),),
                    Text("--------------------------------------------------", style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Text("\$49.95", style: TextStyle(fontSize: 18, color: Colors.black),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
