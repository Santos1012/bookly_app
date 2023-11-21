import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&q=subject:Programming&maxResults=40",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(errMsg: e.message!));
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:flutter platform&maxResults=40&orderBy=newest",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(errMsg: e.message!));
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required BookModel bookModel}) async {
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:flutter platform&maxResults=40",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(errMsg: e.message!));
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResultBooks(
      {required String subject}) async {
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$subject&maxResults=40",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(errMsg: e.message!));
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
