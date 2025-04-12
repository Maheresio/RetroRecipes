import 'package:flutter/material.dart';

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
          (index) => PopularRecipeListViewItem(index: index),
        ),
      ),
    );
  }
}