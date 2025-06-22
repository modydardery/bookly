import 'package:bookly/core/errors/faliers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Falier, List<BookModel>>> fetchSearchedBooks({
    required String bookTitle,
  });

 
}