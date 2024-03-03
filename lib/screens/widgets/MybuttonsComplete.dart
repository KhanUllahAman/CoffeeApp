import 'package:cofeeapp/screens/widgets/Mybuttons.dart';
import 'package:flutter/material.dart';

class Mybuttonscomplete extends StatelessWidget {
  const Mybuttonscomplete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 22,),
          Mybuttons(titlestring: "🔥", title: "Popular",),
          SizedBox(width: 10,),
          Mybuttons(titlestring: "☕", title: "Coffee",),
          SizedBox(width: 10,),
          Mybuttons(titlestring: "🍹", title: "Drinks",),
          SizedBox(width: 10,),
          Mybuttons(titlestring: "🍵", title: "Tea",),
          SizedBox(width: 10,),
          Mybuttons(titlestring: "🥤", title: "Juice",),
        ],
      ),
    );
  }
}