import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo})
      : super(SimilarBooksInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchFeatureBooks();
    return result.fold((failure) {
      emit(SimilarBooksFailureState(errMsg: failure.errMsg));
    }, (books) {
      emit(SimilarBooksSuccessState(books: books));
    });
  }
}
