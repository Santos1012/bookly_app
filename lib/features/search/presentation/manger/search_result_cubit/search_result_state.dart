part of 'search_result_cubit.dart';

sealed class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

class SearchResultInitialState extends SearchResultState {}

class SearchResultLoadingState extends SearchResultState {}

class SearchResultSuccessState extends SearchResultState {
  final List<BookModel> books;

  const SearchResultSuccessState({required this.books});
}

class SearchResultFailureState extends SearchResultState {
  final String errMsg;
  const SearchResultFailureState({required this.errMsg});
}
