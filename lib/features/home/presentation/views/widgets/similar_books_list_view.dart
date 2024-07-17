import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import '../../view_model/similar_books_cubit/similar_books_cubit.dart';
import '../../view_model/similar_books_cubit/similar_books_state.dart';
import 'similar_books_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccessState) {
            List<BookModel> books = state.books;
            return ListView.builder(
              itemCount: books.length,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SimilarBooksItem(book: books[index]);
              },
            );
          } else if (state is SimilarBooksFailureState) {
            return Center(
              child: Text(
                state.errMessage,
                style: Styles.textStyle20,
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
