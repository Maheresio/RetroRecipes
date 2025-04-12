
import 'package:flutter/material.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

import '../../model/recipe_category.dart';
import '../../model/recipe_model.dart';
import 'title_with_action_tile.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithActionTile(title: AppStrings.kCategories, onPressed: () {}),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              menuItems.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  spacing: 8,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: recipeCategory[index].color,
                      child: Image.asset(recipeCategory[index].image),
                    ),

                    Text(
                      recipeCategory[index].name,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
