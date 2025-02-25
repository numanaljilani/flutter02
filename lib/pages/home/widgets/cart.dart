import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
      Container(
        height: 85,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)),
        child: const Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              "6",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Products",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      Positioned(
        top: -20,
        left: 80/4,
    
        child: Container(
          width: 40,height: 40,
         decoration: const BoxDecoration(color: Colors.black , shape: BoxShape.circle),
         child: const Icon(Icons.shopping_bag_outlined,color: Colors.white,),
        ),
      )
    ]);
  }
}
