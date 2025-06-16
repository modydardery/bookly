import 'package:bookly/core/errors/faliers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRebo {
  Future<Either<Falier, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Falier, List<BookModel>>> fetchFeaturedBooks();
}
  