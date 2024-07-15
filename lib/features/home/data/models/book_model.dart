import 'book_rating.dart';
import 'list_price.dart';

class BookModel {
  final String? title;
  final List<String>? authors;
  final List<String>? categories;
  final String? thumbnail;
  final String? previewLink;
  final String? buyLink;
  final ListPrice? listPrice;
  final BookRating? bookRating;

  BookModel({
    required this.title,
    required this.authors,
    required this.categories,
    required this.thumbnail,
    required this.previewLink,
    required this.buyLink,
    required this.listPrice,
    required this.bookRating,
  });

  factory BookModel.fromJson(json) {
    return BookModel(
      title: json['volumeInfo']['title'],
      authors: json['volumeInfo']['authors'],
      categories: json['volumeInfo']['categories'],
      thumbnail: json['volumeInfo']['imageLinks']['thumbnail'],
      previewLink: json['volumeInfo']['previewLink'],
      buyLink: json['saleInfo']['buyLink'],
      listPrice: ListPrice.fromJson(json['saleInfo']),
      bookRating: json['volumeInfo'],
    );
  }
}
