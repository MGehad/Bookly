import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/image_widget.dart';
import '../../../data/models/book_model.dart';
import '../../view_model/newest_books_cubit/newest_books_cubit.dart';
import '../../view_model/newest_books_cubit/newest_books_state.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccessState) {
            List<BookModel> books = state.books;
            return ListView.builder(
              itemCount: books.length,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ImageWidget(
                    borderRadius: 5.0,
                    thumbnail: books[index].thumbnail!,
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                );
              },
            );
          } else if (state is NewestBooksFailureState) {
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
