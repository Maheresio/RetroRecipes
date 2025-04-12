
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'see_all_button.dart';

class TitleWithActionTile extends StatelessWidget {
  const TitleWithActionTile({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
        ),

        SeeAllButton(onPressed: onPressed),
      ],
    );
  }
}

