import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/models/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String book});
}
