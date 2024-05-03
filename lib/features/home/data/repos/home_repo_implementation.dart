import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failure, BooksModel>> fetchNewsetBooks() async {
    try {
      var response = await ApiService().getRequest(
          url:
              "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");
      BooksModel books = BooksModel.fromJson(response);
      return right(books);
    } on Exception {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, BooksModel>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
