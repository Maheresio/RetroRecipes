import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../model/recipe_model.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key, this.radius = 15, required this.index});

  final double radius;

  final int index;
  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = recipeItems[widget.index].fav;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
          recipeItems[widget.index].fav = !recipeItems[widget.index].fav;
        });
      },
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: isFavorite ? Colors.red : Colors.black45,
        child: Icon(IconsaxPlusLinear.heart, color: Colors.white),
      ),
    );
  }
}
