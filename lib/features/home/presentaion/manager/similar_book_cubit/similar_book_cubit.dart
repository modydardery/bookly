import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/rebos/home_rebo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRebo) : super(SimilarBookInitial());
  HomeRebo homeRebo;
    // Replace with actual category
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRebo.fetchSimilarBooks(category: category);
    return result.fold(
      (failure) {
        emit(SimilarBookFailer(failure.errorMessage));
      },
      (books) {
        emit(SimilarBooksuccess(books));
      },
    );
  }
}
