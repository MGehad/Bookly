import 'package:bloc/bloc.dart';
import '../../repos/search_repo.dart';
import 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this._searchRepo) : super(SearchBooksInitialState());

  final SearchRepo _searchRepo;

  void getSearchBooks({required String book}) async {
    emit(SearchBooksLoadingState());
    var result = await _searchRepo.fetchSearchBooks(book: book);
    result.fold(
      (failure) => emit(
        SearchBooksFailureState(errMessage: failure.errMessage),
      ),
      (books) => emit(
        SearchBooksSuccessState(books: books),
      ),
    );
  }
}
