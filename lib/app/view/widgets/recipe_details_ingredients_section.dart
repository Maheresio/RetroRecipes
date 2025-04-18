import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core%20/utils/app_strings.dart';
import '../../model/ingredients_model.dart';

class RecipeDetailsIngredientsSection extends StatelessWidget {
  const RecipeDetailsIngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.kIngredients,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            TextButton(onPressed: () {}, child: const Text('See details')),
          ],
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(ingredients.length, (i) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ingredients[i].color,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ingredients[i].image, scale: 15),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      ingredients[i].name,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

