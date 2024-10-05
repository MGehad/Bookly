import '../../../../data/models/book_model.dart';

class SimilarBooksState {}

class SimilarBooksInitialState extends SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccessState({required this.books});
}

class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailureState({required this.errMessage});
}
