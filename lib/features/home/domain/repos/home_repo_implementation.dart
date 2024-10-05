import 'package:bookly/features/home/domain/repos/home_local_implementation.dart';
import 'package:bookly/features/home/domain/repos/home_remote_implementation.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failure.dart';
import '../../data/models/book_model.dart';
import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final HomeLocalImplementation homeLocalImplementation;
  final HomeRemoteImplementation homeRemoteImplementation;

  HomeRepoImplementation({
    required this.homeRemoteImplementation,
    required this.homeLocalImplementation,
  });

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Future<List<BookModel>> remoteBooks =
          homeRemoteImplementation.fetchFeaturedBooks();
      List<BookModel> localBooks = homeLocalImplementation.fetchFeaturedBooks();

      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }

      return right(await remoteBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Future<List<BookModel>> remoteBooks =
          homeRemoteImplementation.fetchNewestBooks();
      List<BookModel> localBooks = homeLocalImplementation.fetchNewestBooks();

      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }

      return right(await remoteBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      Future<List<BookModel>> remoteBooks =
          homeRemoteImplementation.fetchSimilarBooks(category: category);
      List<BookModel> localBooks =
          homeLocalImplementation.fetchSimilarBooks(category: category);

      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }

      return right(await remoteBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
