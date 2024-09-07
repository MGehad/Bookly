import 'package:hive/hive.dart';

import 'book_rating.dart';
import 'list_price.dart';

part 'book_model.g.dart';

@HiveType(typeId: 0)
class BookModel {
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final List<String>? authors;
  @HiveField(2)
  final List<String>? categories;
  @HiveField(3)
  final String? thumbnail;
  @HiveField(4)
  final String? previewLink;
  @HiveField(5)
  final String? buyLink;
  @HiveField(6)
  final ListPrice? listPrice;
  @HiveField(7)
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
      authors:
          (json['volumeInfo']?['authors'] as List<dynamic>?)?.cast<String>() ??
              [],
      categories: (json['volumeInfo']?['categories'] as List<dynamic>?)
              ?.cast<String>() ??
          [],
      thumbnail: json['volumeInfo']['imageLinks']?['thumbnail'] ?? "",
      previewLink: json['volumeInfo']['previewLink'],
      buyLink: json['saleInfo']['buyLink'],
      listPrice: ListPrice.fromJson(json['saleInfo']['listPrice']),
      bookRating: BookRating.fromJson(json['volumeInfo']),
    );
  }
}
