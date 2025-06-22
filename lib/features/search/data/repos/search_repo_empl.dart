import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/core/errors/faliers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoEmpl implements SearchRepo {
  SearchRepoEmpl(this.apiServices);
  ApiServices apiServices;
  @override
  Future<Either<Falier, List<BookModel>>> fetchSearchedBooks({required String bookTitle}) async {
     try {
      var data = await apiServices.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=$bookTitle',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFalier.fromDioError(e));
      }
      return left(ServerFalier(e.toString()));
    }
  }
}