// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookModelAdapter extends TypeAdapter<BookModel> {
  @override
  final int typeId = 0;

  @override
  BookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookModel(
      title: fields[0] as String?,
      authors: (fields[1] as List?)?.cast<String>(),
      categories: (fields[2] as List?)?.cast<String>(),
      thumbnail: fields[3] as String?,
      previewLink: fields[4] as String?,
      buyLink: fields[5] as String?,
      listPrice: fields[6] as ListPrice?,
      bookRating: fields[7] as BookRating?,
    );
  }

  @override
  void write(BinaryWriter writer, BookModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.authors)
      ..writeByte(2)
      ..write(obj.categories)
      ..writeByte(3)
      ..write(obj.thumbnail)
      ..writeByte(4)
      ..write(obj.previewLink)
      ..writeByte(5)
      ..write(obj.buyLink)
      ..writeByte(6)
      ..write(obj.listPrice)
      ..writeByte(7)
      ..write(obj.bookRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
