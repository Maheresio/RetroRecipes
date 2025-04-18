import 'package:flutter/material.dart';

import 'recipe_details_ingredients_section.dart';
import 'recipe_details_ingredients_statistics_section.dart';
import 'recipe_details_owner_and_review_section.dart';

class RecipeDetailsContent extends StatelessWidget {
  const RecipeDetailsContent({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeDetailsOwnerAndReviewSection(index: index),
            RecipeDetailsIngredientStatisticsSection(index: index),
            RecipeDetailsIngredientsSection(),
          ],
        ),
      ),
    );
  }
}
