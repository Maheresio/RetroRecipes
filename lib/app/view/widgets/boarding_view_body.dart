import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:retro_recipes/core%20/utils/app_images.dart';
import 'package:retro_recipes/core%20/utils/app_router.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

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
          NavigationButton(),
        ],
      ),
    );
  }
}

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

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Color(0xff2cb261)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          onPressed: () => GoRouter.of(context).push(AppRouter.kHomeView),
          child: Text(
            AppStrings.kGetStarted,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

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
