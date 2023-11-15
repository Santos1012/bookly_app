import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoadingState());
    var result = await homeRepo.fetchFeatureBooks();
    return result.fold((failure) {
      emit(FeatureBooksFailureState(errMsg: failure.errMsg));
    }, (books) {
      emit(FeatureBooksSuccessState(books: books));
    });
  }
}
