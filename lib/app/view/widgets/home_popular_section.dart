import 'package:flutter/material.dart';

import '../../../core%20/utils/app_strings.dart';
import 'popular_recipe_dish_selector.dart';
import 'popular_recipe_listview.dart';
import 'title_with_action_tile.dart';

class HomePopularRecipeSection extends StatelessWidget {
  const HomePopularRecipeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithActionTile(
          title: AppStrings.kPopularRecipes,
          onPressed: () {},
        ),
        SizedBox(height: 8),
        PopularRecipeDishSelector(),
        SizedBox(height: 20),
        PopularRecipeListView(),
      ],
    );
  }
}
