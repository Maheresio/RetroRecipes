import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_list_tile.dart';
import '../../../core%20/utils/app_strings.dart';

import '../../model/recipe_model.dart';

class RecipeDetailsOwnerAndReviewSection extends StatelessWidget {
  const RecipeDetailsOwnerAndReviewSection({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: HomeListTile(
            ownerName: recipeItems[index].ownerName,
            ownerImageUrl: recipeItems[index].owner,
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  recipeItems[index].rate.toString(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: List.generate(5, (i) {
                    return Icon(
                      Icons.star,
                      color:
                          recipeItems[index].rate.floor() - i > 0
                              ? Colors.amber
                              : Colors.grey,
                      size: 15.sp,
                    );
                  }),
                ),
              ],
            ),
            Text(
              '(${recipeItems[index].reviews} ${AppStrings.kReviews})',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade700),
            ),
          ],
        ),
      ],
    );
  }
}
