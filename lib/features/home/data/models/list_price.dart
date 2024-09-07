import 'package:hive/hive.dart';

part 'list_price.g.dart';

@HiveType(typeId: 2)
class ListPrice {
  @HiveField(0)
  final double? amount;
  @HiveField(1)
  final String? currencyCode;

  ListPrice({required this.amount, required this.currencyCode});

  factory ListPrice.fromJson(json) {
    return ListPrice(
      amount: json?['amount'] ?? 0,
      currencyCode: json?['currencyCode'],
    );
  }
}
