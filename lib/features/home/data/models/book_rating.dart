class BookRating {
  final num? averageRating;
  final int? ratingsCount;

  BookRating({required this.averageRating, required this.ratingsCount});

  factory BookRating.fromJson(json) {
    return BookRating(
      averageRating: json['averageRating'] ?? 0,
      ratingsCount: json['ratingsCount'] ?? 0,
    );
  }
}
