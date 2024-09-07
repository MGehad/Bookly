import 'package:bookly/core/utils/constants.dart';

import '../../../../core/utils/functions/hive_books.dart';
import '../../data/models/book_model.dart';
import 'home_local_repo.dart';

class HomeLocalImplementation implements HomeLocalRepo {
  HomeLocalImplementation();

  @override
  List<BookModel> fetchNewestBooks() {
    List<BookModel> books = [];
    books = HiveBooks.getBooksLocal(newestBooksBox);

    return books;
  }

  @override
  List<BookModel> fetchFeaturedBooks() {
    List<BookModel> books = [];
    books = HiveBooks.getBooksLocal(featuresBooksBox);
    return books;
  }

  @override
  List<BookModel> fetchSimilarBooks({required String category}) {
    List<BookModel> books = [];
    books = HiveBooks.getBooksLocal(similarBooksBox);

    return books;
  }
}
