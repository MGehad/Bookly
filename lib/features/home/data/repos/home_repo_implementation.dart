import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';
import '../models/book_model.dart';
import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImplementation({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=all');
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
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
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
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
