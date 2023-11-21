import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit( {required this.homeRepo})
      : super(SearchResultInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks({required String subject}) async {
    emit(SearchResultLoadingState());
    var result = await homeRepo.fetchSearchResultBooks(subject: subject);
    return result.fold((failure) {
      emit(SearchResultFailureState(errMsg: failure.errMsg));
    }, (books) {
      emit(SearchResultSuccessState(books: books));
    });
  }
}
