
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/recipe_model.dart';

class PopularRecipeDishSelector extends StatefulWidget {
  const PopularRecipeDishSelector({super.key});

  @override
  State<PopularRecipeDishSelector> createState() => PopularRecipeDishSelectorState();
}

class PopularRecipeDishSelectorState extends State<PopularRecipeDishSelector> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          menuItems.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),

                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [
                      selectedIndex == index ? Colors.green : Colors.white,
                      selectedIndex == index
                          ? Colors.greenAccent
                          : Colors.white,
                    ],
                  ),
                ),
                child: Text(
                  menuItems[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
