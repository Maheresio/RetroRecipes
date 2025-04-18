import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key, this.radius = 15});

  final double radius;
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
        radius: widget.radius,
        backgroundColor: isFavorite ? Colors.red : Colors.black45,
        child: Icon(IconsaxPlusLinear.heart, color: Colors.white),
      ),
    );
  }
}
