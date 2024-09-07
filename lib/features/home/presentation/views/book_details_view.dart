import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/book_model.dart';
import '../view_model/similar_books_cubit/similar_books_cubit.dart';
import 'widgets/book_details_body.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel book;

  const BookDetailsView({super.key, required this.book});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(
        (widget.book.categories!.isNotEmpty)
            ? widget.book.categories![0]
            : 'sports');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsBody(book: widget.book),
      ),
    );
  }
}
