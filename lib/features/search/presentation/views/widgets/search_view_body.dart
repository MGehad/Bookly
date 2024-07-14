import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../home/presentation/views/widgets/custom_text_widget.dart';
import 'custom_search_widget.dart';
import 'search_books_results_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchWidget(),
          SizedBox(height: 30),
          CustomTextWidget(text: 'Search Results'),
          Expanded(child: SearchBooksResultsList())
        ],
      ),
    );
  }
}
