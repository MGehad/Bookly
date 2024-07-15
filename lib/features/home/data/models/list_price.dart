class ListPrice {
  final double? amount;
  final String? currencyCode;

  ListPrice({required this.amount, required this.currencyCode});

  factory ListPrice.fromJson(json) {
    return ListPrice(
        amount: json['listPrice']['amount'],
        currencyCode: json['listPrice']['currencyCode']);
  }
}
