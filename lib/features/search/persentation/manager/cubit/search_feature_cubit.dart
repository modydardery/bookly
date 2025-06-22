import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_feature_state.dart';

class SearchFeatureCubit extends Cubit<SearchFeatureState> {
  SearchFeatureCubit(this.searchRepo) : super(SearchFeatureInitial());
  SearchRepo searchRepo;
  Future<void> fetchSearchedBooks({required String bookTitle}) async {
    emit(SearchFeatureLoading());
    var result = await searchRepo.fetchSearchedBooks(bookTitle: bookTitle);
    result.fold(
      (failure) {
        emit(SearchFeatureFailer(failure.errorMessage));
      },
      (books) {
        emit(SearchFeatureSuccess(books: books));
      },
    );
  }
}
