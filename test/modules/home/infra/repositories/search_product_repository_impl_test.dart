import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';
import 'package:shopping/src/modules/home/domain/errors/errors.dart';
import 'package:shopping/src/modules/home/infra/datasources/search_datasource.dart';
import 'package:shopping/src/modules/home/infra/models/product_result_search_model.dart';
import 'package:shopping/src/modules/home/infra/repositories/search_product_repository_impl.dart';

class SearchDatasourceMock extends Mock implements ISearchDatasource {}

void main () {

  final datasource = SearchDatasourceMock();
  final repository = SearchProductRepositoryImpl(datasource);



  test('Deve retornar uma lista de ProductResultEntity', () async {

    when(datasource.getSearch(any)).thenAnswer((_) async => <ProductResultSearchModel>[]);

    final result = await repository.search('Jacob');
    expect(result | null, isA<List<ProductResultEntity>>());

  });



  test('Deve retornar um DatasourceError se o datasource falhar', () async {

    when(datasource.getSearch(any)).thenThrow(Exception());

    final result = await repository.search('Jacob');
    expect(result.fold(id, id), isA<DatasourceError>());

  });



}