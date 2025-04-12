import 'package:flutter/material.dart';
import 'package:retro_recipes/core%20/utils/app_images.dart';

class Category {
  final String name;
  final String image;
  final Color color;

  Category({required this.name, required this.image, required this.color});
}

List<Category> recipeCategory = [
  Category(
    name: 'Oats',
    image: AppImages.oatsImage,
    color: const Color(0xffd8d8d8),
  ),
  Category(
    name: 'Cereals',
    image: AppImages.cerealImage,
    color: const Color(0xfff4cfcc),
  ),
  Category(
    name: 'Fruits',
    image: AppImages.bananaImage,
    color: const Color(0xffb8efd0),
  ),
  Category(
    name: 'Vegetable',
    image: AppImages.cornImage,
    color: const Color(0xffffe9b2),
  ),
  Category(
    name: 'Bread',
    image: AppImages.breadImage,
    color: const Color(0xffddd0a4),
  ),
];
