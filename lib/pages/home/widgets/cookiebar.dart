import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';

class CookieBar extends StatelessWidget {
  const CookieBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
        Text(
          "Cookies",
          style: TextStyle(fontSize: 42, color: Colors.white),
        ),
        Text(
          "Premium",
          style: TextStyle(fontSize: 30, color: orange),
        )
      ],
        ),
        Text(
          "see more",
          style: TextStyle(fontSize: 14, color: orange),
        )
      ],
    );
  }
}
