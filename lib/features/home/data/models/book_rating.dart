class BookRating {
  final num? averageRating;
  final int? ratingsCount;

  BookRating({required this.averageRating, required this.ratingsCount});

  factory BookRating.fromJson(json) {
    return BookRating(
      averageRating: json['averageRating'],
      ratingsCount: json['ratingsCount'],
    );
  }
}
