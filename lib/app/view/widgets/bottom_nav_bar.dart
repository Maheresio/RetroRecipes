import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  int selectedPage = 0;
  List<IconData> icons = [
    IconsaxPlusBold.home_1,
    Icons.bar_chart_rounded,
    IconsaxPlusBold.heart,
    Icons.person_outline_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          icons.length,
          (index) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              setState(() {
                selectedIndex = index;
                selectedPage = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: AnimatedScale(
                scale: selectedIndex == index ? 1.2 : 1,
                duration: const Duration(milliseconds: 100),
                curve: Curves.elasticOut,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      icons[index],
                      color:
                          selectedIndex == index ? Colors.green : Colors.grey,
                    ),
                    Container(
                      height: 8,
                      width: 40,
                      decoration: BoxDecoration(
                        color:
                            selectedIndex == index
                                ? Colors.green
                                : Colors.transparent,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
