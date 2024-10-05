import '../../data/models/book_model.dart';

abstract class HomeRemoteRepo {
  Future<List<BookModel>> fetchFeaturedBooks();

  Future<List<BookModel>> fetchNewestBooks();

  Future<List<BookModel>> fetchSimilarBooks({required String category});
}
