import '../../../../core/utils/constants.dart';
import '../../../../core/utils/functions/hive_books.dart';
import '../models/book_model.dart';
import '../../../../core/utils/api_service.dart';
import '../../domain/repos/home_remote_repo.dart';

class HomeRemoteImplementation implements HomeRemoteRepo {
  final ApiService _apiService;

  HomeRemoteImplementation({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<List<BookModel>> fetchNewestBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=all');
    List items = data['items'];
    List<BookModel> books = [];
    for (var item in items) {
      books.add(BookModel.fromJson(item));
    }

    await HiveBooks.addBooksLocal(books, newestBooksBox);

    return books;
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
    List items = data['items'];
    List<BookModel> books = [];
    for (var item in items) {
      books.add(BookModel.fromJson(item));
    }

    await HiveBooks.addBooksLocal(books, featuresBooksBox);

    return books;
  }

  @override
  Future<List<BookModel>> fetchSimilarBooks({required String category}) async {
    var data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category');
    List items = data['items'];
    List<BookModel> books = [];
    for (var item in items) {
      books.add(BookModel.fromJson(item));
    }

    await HiveBooks.addBooksLocal(books, similarBooksBox);

    return books;
  }
}
