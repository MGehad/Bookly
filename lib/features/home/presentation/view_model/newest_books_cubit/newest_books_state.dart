import '../../../../../core/models/book_model.dart';

class NewestBooksState {}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccessState({required this.books});
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMessage;

  NewestBooksFailureState({required this.errMessage});
}
