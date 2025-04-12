import 'package:flutter/material.dart';
import 'package:retro_recipes/app/view/widgets/bottom_nav_bar.dart';
import 'package:retro_recipes/app/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavBar(),
      body: HomeViewBody(),
    );
  }
}
