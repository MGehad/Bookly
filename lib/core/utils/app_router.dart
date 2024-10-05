import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/domain/cubits/similar_books_cubit/similar_books_cubit.dart';
import '../../features/home/domain/repos/home_repo_implementation.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/domain/repos/search_repo_implementation.dart';
import '../../features/search/domain/cubits/search_books_cubit/search_books_cubit.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../../features/home/data/models/book_model.dart';
import 'service_locater.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/detailsView';
  static const String kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) {
        BookModel book = state.extra as BookModel;
        return BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
          child: BookDetailsView(
            book: book,
          ),
        );
      },
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchBooksCubit(getIt.get<SearchRepoImplementation>()),
          child: const SearchView()),
    ),
  ]);
}
