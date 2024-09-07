// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_rating.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookRatingAdapter extends TypeAdapter<BookRating> {
  @override
  final int typeId = 1;

  @override
  BookRating read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookRating(
      averageRating: fields[0] as num?,
      ratingsCount: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BookRating obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.averageRating)
      ..writeByte(1)
      ..write(obj.ratingsCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookRatingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
