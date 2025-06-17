part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBooksFailer extends NewestBookState {
  final String errorMessage;

  const NewestBooksFailer(this.errorMessage);
}

final class NewestBookSuccess extends NewestBookState {
  final List<BookModel> Books;

  const NewestBookSuccess(this.Books);
}

final class NewestBookLoading extends NewestBookState {}
