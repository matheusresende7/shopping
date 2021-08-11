import 'package:dartz/dartz.dart';
import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';
import 'package:shopping/src/modules/home/domain/errors/errors.dart';

abstract class ISearchProductRepository {

  Future<Either<IFailureSearch, List<ProductResultEntity>>> search (String searchText);

}