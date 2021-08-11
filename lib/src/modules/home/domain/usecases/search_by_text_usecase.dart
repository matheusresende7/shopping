import 'package:dartz/dartz.dart';
import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';
import 'package:shopping/src/modules/home/domain/errors/errors.dart';
import 'package:shopping/src/modules/home/domain/repositories/search_product_repository.dart';

abstract class ISearchByTextUsecase {
  Future<Either<IFailureSearch, List<ProductResultEntity>>> call (String searchText);
}

class SearchByTextUsecaseImpl implements ISearchByTextUsecase {

  final ISearchProductRepository repository;

  SearchByTextUsecaseImpl(this.repository);

  @override
  Future<Either<IFailureSearch, List<ProductResultEntity>>> call (String searchText) async {

    if (searchText == null || searchText == '') {
      return Left(InvalidSearchText());
    }

    return repository.search(searchText);

  }

}