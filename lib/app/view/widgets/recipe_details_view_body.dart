import 'package:flutter/material.dart';

import 'recipe_details_content.dart';
import 'styled_sliver_app_bar.dart';

class RecipeDetailsViewBody extends StatelessWidget {
  const RecipeDetailsViewBody({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          StyledSliverAppBar(
            index: index,
            innerBoxIsScrolled: innerBoxIsScrolled,
          ),
        ];
      },
      body: RecipeDetailsContent(index: index),
    );
  }
}

