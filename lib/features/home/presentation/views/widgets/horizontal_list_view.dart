import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/models/book_model.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/error_message.dart';
import '../../view_model/feature_books_cubit/feature_books_cubit.dart';
import '../../view_model/feature_books_cubit/feature_books_state.dart';
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
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.kBookDetailsView, extra: books[index]);
                  },
                  image: books[index].thumbnail!,
                  previewLink: books[index].previewLink!,
                ),
              );
            },
          );
        } else if (state is FeatureBooksFailureState) {
          return ErrorMessage(message: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
