import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:retro_recipes/core%20/utils/app_router.dart';

import '../../model/recipe_model.dart';
import 'popular_recipe_listview_item.dart';

class PopularRecipeListView extends StatelessWidget {
  const PopularRecipeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          recipeItems.length,
          (index) => GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kRecipeDetailsView,extra: index);
            },
            child: PopularRecipeListViewItem(index: index),
          ),
        ),
      ),
    );
  }
}
