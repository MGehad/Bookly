import '../../../domain/models/book_model.dart';

class FeatureBooksState {}

class FeatureBooksInitialState extends FeatureBooksState {}

class FeatureBooksLoadingState extends FeatureBooksState {}

class FeatureBooksSuccessState extends FeatureBooksState {
  final List<BookModel> books;

  FeatureBooksSuccessState({required this.books});
}

class FeatureBooksFailureState extends FeatureBooksState {
  final String errMessage;

  FeatureBooksFailureState({required this.errMessage});
}
