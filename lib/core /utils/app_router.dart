import 'package:go_router/go_router.dart';
import 'package:retro_recipes/app/view/boarding_view.dart';
import 'package:retro_recipes/app/view/recipe_details.dart';

import '../../app/view/home_view.dart';
import '../helpers/custom_transition.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kRecipeDetailsView = '/recipeDetailsView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const BoardingView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
        pageBuilder:
            (context, state) => buildPageWithDefaultTransition<void>(
              state: state,
              child: const HomeView(),
            ),
      ),
      GoRoute(
        path: kRecipeDetailsView,
        builder: (context, state) {
          return const RecipeDetails();
        },
        pageBuilder:
            (context, state) => buildPageWithDefaultTransition<void>(
              state: state,
              child: const RecipeDetails(),
            ),
      ),
    ],
  );
}
