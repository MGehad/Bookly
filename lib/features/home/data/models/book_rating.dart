import 'package:hive/hive.dart';

part 'book_rating.g.dart';

@HiveType(typeId: 1)
class BookRating {
  @HiveField(0)
  final num? averageRating;
  @HiveField(1)
  final int? ratingsCount;

  BookRating({required this.averageRating, required this.ratingsCount});

  factory BookRating.fromJson(json) {
    return BookRating(
      averageRating: json['averageRating'] ?? 0,
      ratingsCount: json['ratingsCount'] ?? 0,
    );
  }
}
