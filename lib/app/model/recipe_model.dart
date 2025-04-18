import '../../core%20/utils/app_images.dart';

List<String> menuItems = [
  'Breakfast',
  'Lunch',
  'Dinner',
  'Snack',
  'Cheat Menu',
];

class RecipeItems {
  final String image;
  final String name;
  final String owner;
  final String ownerName;
  final String reviews;
  final int carb;
  final double rate;
  final int calorie;
  final int fat;
  final int protein;
  final int weight;
   bool fav;

  RecipeItems({
    required this.image,
    required this.name,
    required this.owner,
    required this.ownerName,
    required this.reviews,
    required this.carb,
    required this.rate,
    required this.calorie,
    required this.fat,
    required this.protein,
    required this.weight,
    this.fav = false,
  });
}

List<RecipeItems> recipeItems = [
  RecipeItems(
    image: AppImages.saldMixImage,
    name: 'Salad Mix',
    owner:
        "https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-after.jpg?auto=avif,webp&format=jpg&width=944",
    ownerName: "Natasha Evelyn",
    reviews: "24",
    carb: 30,
    rate: 4.0,
    calorie: 320,
    fat: 16,
    protein: 12,
    weight: 300,
    fav: true,
  ),
  RecipeItems(
    image: AppImages.shrimpKaleImage,
    name: 'Shrimp Kale',
    owner:
        "https://plus.unsplash.com/premium_photo-1676660359316-273bb172a0df?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww",
    ownerName: "Natasha Evelyn",
    reviews: "33",
    carb: 15,
    rate: 4.0,
    calorie: 2200,
    fat: 30,
    protein: 15,
    weight: 200,
    fav: false,
  ),
  RecipeItems(
    image: AppImages.chickenSaladImage,
    name: 'Chicken Salad',
    owner:
        "https://img.freepik.com/free-photo/portrait-man-laughing_23-2148859448.jpg?size=338&ext=jpg&ga=GA1.1.1819120589.1728086400&semt=ais_hybrid",
    ownerName: "",
    reviews: "100",
    carb: 15,
    rate: 4.3,
    calorie: 240,
    fat: 30,
    protein: 15,
    weight: 250,
    fav: false,
  ),
  RecipeItems(
    image: AppImages.mushroomSaladImage,
    name: 'Mushroom salad',
    owner:
        "https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg",
    ownerName: "Mr/Ms Mushroom",
    reviews: "Prakash Subedi",
    carb: 15,
    rate: 5.0,
    calorie: 320,
    fat: 30,
    protein: 15,
    weight: 200,
    fav: true,
  ),
  RecipeItems(
    image: AppImages.grilledChickenSaladImage,
    name: 'Grilled Chicken Salad',
    owner:
        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg",
    ownerName: "Ramesh Shahi",
    reviews: "50",
    carb: 15,
    rate: 4.5,
    calorie: 420,
    fat: 50,
    protein: 30,
    weight: 400,
    fav: true,
  ),
  RecipeItems(
    image: AppImages.thaiSaladImage,
    name: 'Thai Salad',
    owner:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJaoIeJQU_V9rL_ZII61whWyqSFbmMgTgwQ&s",
    ownerName: "Hari Prasad",
    reviews: "52",
    carb: 30,
    rate: 4.9,
    calorie: 120,
    fat: 50,
    protein: 16,
    weight: 200,
    fav: false,
  ),
];
