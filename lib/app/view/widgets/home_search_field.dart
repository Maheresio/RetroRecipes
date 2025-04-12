
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:retro_recipes/core%20/utils/app_strings.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[100],
        hintText: AppStrings.kSearch,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(IconsaxPlusLinear.search_normal_1),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
