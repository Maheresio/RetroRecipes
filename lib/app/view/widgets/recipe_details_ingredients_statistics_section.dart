import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

import '../../model/recipe_model.dart';
import 'styled_progress.dart';

class RecipeDetailsIngredientStatisticsSection extends StatelessWidget {
  const RecipeDetailsIngredientStatisticsSection({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipeItems[index].name,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '1 ${AppStrings.kBowl} (${recipeItems[index].weight}g)',
                  style: TextStyle(
                    fontSize: 13.5.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.kSeeDetails),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StyledProgress(
              name: AppStrings.kCarbs,
              amount: "${recipeItems[index].carb} g",
              percentage: "(56%)",
              color: Colors.green,
              data: 0.4,
            ),
            StyledProgress(
              color: Colors.red,
              name: AppStrings.kFat,
              amount: '${recipeItems[index].fat} g',
              percentage: '(72%)',
              data: 0.6,
            ),
            StyledProgress(
              color: Colors.orange,
              name: AppStrings.kProtein,
              amount: '${recipeItems[index].protein} g',
              percentage: '(8%)',
              data: 0.2,
            ),
            StyledProgress(
              color: Colors.green,
              name: AppStrings.kCalories,
              amount: '${recipeItems[index].calorie} kkal',
              percentage: "",
              data: 0.7,
            ),
          ],
        ),
      ],
    );
  }
}
