import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: CircleAvatar(
        radius: 15,
        backgroundColor: isFavorite ? Colors.red : Colors.black45,
        child: Icon(IconsaxPlusLinear.heart, color: Colors.white),
      ),
    );
  }
}
