import 'package:flutter/material.dart';

import 'boarding_content_section.dart';
import 'boarding_image_section.dart';
import 'boarding_navigation_button.dart';

class BoardingViewBody extends StatelessWidget {
  const BoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        spacing: 8,
        children: [
          BoardingImageSection(),
          BoardingContentSection(),
          BoardingNavigationButton(),
        ],
      ),
    );
  }
}
