part of 'feature_books_cubit.dart';

abstract class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

class FeatureBooksInitialState extends FeatureBooksState {}

class FeatureBooksLoadingState extends FeatureBooksState {}

class FeatureBooksSuccessState extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksSuccessState({required this.books});
}

class FeatureBooksFailureState extends FeatureBooksState {
  final String errMsg;
  const FeatureBooksFailureState({required this.errMsg});
}
