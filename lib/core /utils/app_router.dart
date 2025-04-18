import 'package:go_router/go_router.dart';

import '../../app/view/boarding_view.dart';
import '../../app/view/home_view.dart';
import '../../app/view/recipe_details.dart';
import '../helpers/custom_transition.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kRecipeDetailsView = '/recipeDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BoardingView();
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
          return RecipeDetails(index: state.extra as int);
        },
        pageBuilder: (context, state) {
          return buildPageWithDefaultTransition<void>(
            state: state,
            child: RecipeDetails(index: state.extra as int),
          );
        },
      ),
    ],
  );
}
