import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/rebos/home_rebo.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRebo) : super(NewestBookInitial());
  HomeRebo homeRebo;
  Future<void> featuredNewestBooks() async{
    emit(NewestBookLoading());
    var result = await homeRebo.fetchBestSellerBooks();
    return result.fold(
      (failure) {
        emit(NewestBooksFailer(failure.errorMessage));
      },
      (books) {
        emit(NewestBookSuccess(books));
      },
    );
  }
}
