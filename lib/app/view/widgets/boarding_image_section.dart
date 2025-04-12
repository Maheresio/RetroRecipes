import 'package:flutter/material.dart';

import '../../../core /utils/app_images.dart';

class BoardingImageSection extends StatelessWidget {
  const BoardingImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.625,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.grey.shade400, Colors.grey.shade200, Colors.white],
        ),
        image: const DecorationImage(
          image: AssetImage(AppImages.background1Image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
