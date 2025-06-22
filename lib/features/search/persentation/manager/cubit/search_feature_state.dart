part of 'search_feature_cubit.dart';

sealed class SearchFeatureState extends Equatable {
  const SearchFeatureState();

  @override
  List<Object> get props => [];
}

final class SearchFeatureInitial extends SearchFeatureState {}
final class SearchFeatureLoading extends SearchFeatureState {}
final class SearchFeatureSuccess extends SearchFeatureState {
  const SearchFeatureSuccess({required this.books});
   final List<BookModel> books;
}
final class SearchFeatureFailer extends SearchFeatureState {
  final String errorMessage;

  const SearchFeatureFailer(this.errorMessage);
}
