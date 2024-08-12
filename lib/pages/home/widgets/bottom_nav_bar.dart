import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/pages/home/widgets/nav_bar_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;
  var ypos = 0.0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
              color: navBarcolor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
        ),
        Positioned.fill(
            top: -25,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 0;
                      ypos = size.width/3;
                    }),
                    child: NavBarButton(
                      icon: 'assets/home.png',
                      text: 'Home',
                      isSelected: index == 0,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 1;
                      ypos = size.width/3 + 90;
                    }),
                    child: NavBarButton(
                      icon: 'assets/search.png',
                      text: 'Search',
                      isSelected: index == 1,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 2;
                      ypos = size.width/3 + 180;
                    }),
                    child: NavBarButton(
                      icon: 'assets/premium.png',
                      text: 'Premium',
                      isSelected: index == 2,
                    ),
                  ),
                ],
              ),
            )),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              top: - 50,
              left: ypos == 0 ? size.width / 3 : ypos ,
              child: Container(
                width: 10,
                height: 10,
                decoration:const BoxDecoration(color: orange , shape: BoxShape.circle)
              ),
            )
      ],
    );
  }
}
