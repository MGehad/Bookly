import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/error_message.dart';
import '../../../data/models/book_model.dart';
import '../../view_model/newest_books_cubit/newest_books_cubit.dart';
import '../../view_model/newest_books_cubit/newest_books_state.dart';
import 'book_item.dart';

class NewestSliverList extends StatelessWidget {
  const NewestSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          List<BookModel> books = state.books;
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: books.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 50.0,
                  left: 30.0,
                ),
                child: BookItem(book: books[index]),
              );
            },
          ));
        } else if (state is NewestBooksFailureState) {
          return SliverToBoxAdapter(
            child: ErrorMessage(
              message: state.errMessage,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),);
        }
      },
    );
  }
}
