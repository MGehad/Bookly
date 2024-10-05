import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repos/home_repo.dart';
import 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());
  final HomeRepo homeRepo;

  void getSimilarBooks(String category) async {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccessState(books: books));
      },
    );
  }
}
