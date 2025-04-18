import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/recipe_model.dart';
import 'favorite_icon.dart';

class StyledSliverAppBar extends StatelessWidget {
  const StyledSliverAppBar({
    super.key,
    required this.index,
    required this.innerBoxIsScrolled,
  });

  final int index;
  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 0.35.sh,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(recipeItems[index].image, fit: BoxFit.cover),
        title:
            innerBoxIsScrolled
                ? Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(recipeItems[index].image),
                      radius: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      recipeItems[index].name,
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                )
                : null,
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black38,
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),

      actions: [
        FavoriteIcon(radius: 20, index: index),
        CircleAvatar(
          backgroundColor: Colors.black38,
          child: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.ellipsisVertical, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
