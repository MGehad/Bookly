class BookRating {
  final double? averageRating;
  final int? ratingsCount;

  BookRating({required this.averageRating, required this.ratingsCount});

  factory BookRating.fromJson(json) {
    return BookRating(
      averageRating: json['averageRating'],
      ratingsCount: json['ratingsCount'],
    );
  }
}
