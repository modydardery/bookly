import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/rebos/home_rebo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRebo) : super(FeaturedBooksInitial());
  HomeRebo homeRebo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRebo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailer(failure.errorMessage));
      },
      (books) {
        print(books.length);
        emit(FeaturedBooksSucseess(books));
      },
    );
  }
}
