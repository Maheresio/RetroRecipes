import 'package:flutter/material.dart';
import 'package:retro_recipes/app/view/widgets/recipe_details_view_body.dart';
import 'package:retro_recipes/core%20/utils/app_colors.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.recipeAppBackground,
      body: RecipeDetailsViewBody(index: index),
    );
  }
}
