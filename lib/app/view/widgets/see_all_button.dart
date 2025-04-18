import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        AppStrings.kSeeAll,
        style: TextStyle(fontSize: 13.5.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
