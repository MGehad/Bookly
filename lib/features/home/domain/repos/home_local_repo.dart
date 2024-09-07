import '../../data/models/book_model.dart';

abstract class HomeLocalRepo {
  List<BookModel> fetchFeaturedBooks();

  List<BookModel> fetchNewestBooks();

  List<BookModel> fetchSimilarBooks({required String category});
}
