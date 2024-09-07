import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/data/models/book_model.dart';
import '../../../../../core/utils/widgets/error_message.dart';
import '../../../../../core/utils/widgets/book_item.dart';
import '../../view_model/search_books_cubit/search_books_cubit.dart';
import '../../view_model/search_books_cubit/search_books_state.dart';

class SearchBooksResultsList extends StatelessWidget {
  const SearchBooksResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccessState) {
          List<BookModel> books = state.books;
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) => BookItem(book: books[index]),
          );
        } else if (state is SearchBooksFailureState) {
          return ErrorMessage(
            message: state.errMessage,
          );
        } else if (state is SearchBooksInitialState) {
          return const Center(child: Text("Start search for a book..."));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
