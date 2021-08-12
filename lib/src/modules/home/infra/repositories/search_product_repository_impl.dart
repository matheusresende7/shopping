import 'package:dartz/dartz.dart';
import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';
import 'package:shopping/src/modules/home/domain/errors/errors.dart';
import 'package:shopping/src/modules/home/domain/repositories/search_product_repository.dart';
import 'package:shopping/src/modules/home/infra/datasources/search_datasource.dart';

class SearchProductRepositoryImpl implements ISearchProductRepository {

  final ISearchDatasource datasource;

  SearchProductRepositoryImpl(this.datasource);

  @override
  Future<Either<IFailureSearch, List<ProductResultEntity>>> search(String searchText) async {

    try {
      final result = await datasource.getSearch(searchText);
      return Right(result);
    } on DatasourceError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DatasourceError());
    }

  }
}