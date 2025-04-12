import 'package:flutter/material.dart';
import 'package:retro_recipes/app/view/widgets/home_header_section.dart';
import 'package:retro_recipes/core%20/utils/app_colors.dart';

import 'home_category_section.dart';
import 'home_list_tile.dart';
import 'home_popular_section.dart';
import 'home_search_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.recipeAppBackground,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            spacing: 20,
            children: [
              HomeHeaderSection(),

              HomeSearchField(),

              HomePopularRecipeSection(),

              HomeCategorySection(),
              HomeListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
