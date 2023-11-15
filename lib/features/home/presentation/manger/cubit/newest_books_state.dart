part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
  @override
  List<Object> get props => [];
}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccessState({required this.books});
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMsg;
  const NewestBooksFailureState({required this.errMsg});
}
