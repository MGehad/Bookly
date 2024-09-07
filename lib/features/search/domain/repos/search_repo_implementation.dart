import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/book_model.dart';
import '../../../../core/utils/api_service.dart';
import 'search_repo.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService _apiService;

  SearchRepoImplementation({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String book}) async {
    try {
      var data =
          await _apiService.get(endPoint: 'volumes?&Sorting=newest&q=$book');
      List items = data['items'];
      List<BookModel> books = [];
      for (var item in items) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(
          ServerFailure(errMessage: e.toString()),
        );
      }
    }
  }
}
