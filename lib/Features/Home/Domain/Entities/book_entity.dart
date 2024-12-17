class BookEntity {
  final String image;
  final String title;
  final String authorName;
  final num price;
  final num averageRate;
  final num rateCount;

  BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.averageRate,
    required this.rateCount,
  });
}
