import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Peter,',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            Text(
              AppStrings.kWhatToEatToday,
              style: TextStyle(fontSize: 13.sp, color: Colors.grey),
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
          ),
        ),
      ],
    );
  }
}
