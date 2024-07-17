import '../../../../../core/models/book_model.dart';

class SearchBooksState {}

class SearchBooksInitialState extends SearchBooksState {}

class SearchBooksLoadingState extends SearchBooksState {}

class SearchBooksSuccessState extends SearchBooksState {
  final List<BookModel> books;

  SearchBooksSuccessState({required this.books});
}

class SearchBooksFailureState extends SearchBooksState {
  final String errMessage;

  SearchBooksFailureState({required this.errMessage});
}
