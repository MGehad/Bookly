import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/data/models/book_model.dart';
import '../../features/home/data/models/book_rating.dart';
import '../../features/home/data/models/list_price.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

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
      builder: (context, state) => BookDetailsView(
        book: BookModel(
          title: "Mohamed Gehad in the University",
          authors: ["Mohamed Gehad"],
          categories: ['categories'],
          thumbnail:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s",
          previewLink: 'previewLink',
          buyLink: 'buyLink',
          listPrice: ListPrice(amount: 15, currencyCode: 'EGP'),
          bookRating: BookRating(averageRating: 4.9, ratingsCount: 500),
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
