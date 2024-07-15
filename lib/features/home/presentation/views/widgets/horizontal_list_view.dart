import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/view_model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/feature_books_cubit/feature_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'horizontal_list_view_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
          builder: (context, state) {
        if (state is FeatureBooksSuccessState) {
          List<BookModel> books = state.books;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: HorizontalListViewItem(
                  onPressed: () {},
                  image: books[index].thumbnail!,
                ),
              );
            },
          );
        } else if (state is FeatureBooksFailureState) {
          return Center(
            child: Text(
              state.errMessage,
              style: Styles.textStyle20,
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
