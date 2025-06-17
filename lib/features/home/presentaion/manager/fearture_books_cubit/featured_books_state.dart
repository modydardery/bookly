part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksFailer extends FeaturedBooksState {
  final String erorrMessage;

  const FeaturedBooksFailer(this.erorrMessage);
}

final class FeaturedBooksSucseess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucseess(this.books);
}

final class FeaturedBooksLoading extends FeaturedBooksState {}
