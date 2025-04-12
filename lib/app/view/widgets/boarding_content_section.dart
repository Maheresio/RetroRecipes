import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core /utils/app_strings.dart';

class BoardingContentSection extends StatelessWidget {
  const BoardingContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        spacing: 20,
        children: [
          Text(
            AppStrings.kBoardingTitle,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),

            textAlign: TextAlign.center,
          ),
          Text(
            AppStrings.kBoardingSubtitle,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

