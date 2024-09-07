import 'package:hive/hive.dart';

import '../../../features/home/data/models/book_model.dart';

class HiveBooks {
  static void addBooksLocal(List<BookModel> books, String boxName) {
    var booksBox = Hive.box(boxName);
    booksBox.addAll(books);
  }

  static List<BookModel> getBooksLocal(String boxName) {
    var booksBox = Hive.box<BookModel>(boxName);
    return booksBox.values.toList();
  }
}
