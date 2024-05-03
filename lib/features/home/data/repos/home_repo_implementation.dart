import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failure, BooksModel>> fetchNewsetBooks() async {
    try {
      var response = await ApiService().getRequest(
          url:
              "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");
      BooksModel books = BooksModel.fromJson(response);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(
              errMessage:
                  "Sorry, an unexpected error occurred. Please try again "),
        );
      }
    }
  }

  @override
  Future<Either<Failure, BooksModel>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
