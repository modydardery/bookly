part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}
final class SimilarBookLoading extends SimilarBookState {}
final class SimilarBooksuccess extends SimilarBookState {
  final List<BookModel> books;
  const SimilarBooksuccess(this.books);

  @override
  List<Object> get props => [books];
}
final class SimilarBookFailer extends SimilarBookState {
  final String errorMessage;
  const SimilarBookFailer(this.errorMessage);
}
