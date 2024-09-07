import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repos/home_remote_repo.dart';
import 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitialState());
  final HomeRemoteRepo homeRepo;

  void getFeatureBooks() async {
    emit(FeatureBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeatureBooksSuccessState(books: books));
      },
    );
  }
}
