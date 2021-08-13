import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';
import 'package:shopping/src/modules/home/domain/errors/errors.dart';
import 'package:shopping/src/modules/home/domain/repositories/search_product_repository.dart';
import 'package:shopping/src/modules/home/domain/usecases/search_by_text_usecase.dart';

class SearchProductRepositoryMock extends Mock implements ISearchProductRepository {}

void main () {

  final repository = SearchProductRepositoryMock();
  final usecase = SearchByTextUsecaseImpl(repository);



  test('Deve retornar uma lista de ProductResultEntity', () async {

    when(repository.search(any)).thenAnswer((_) async => Right(<ProductResultEntity>[]));

    final result = await usecase('matheus');
    expect(result, isA<Right>());
    expect(result | null, isA<List<ProductResultEntity>>());

  });



  test('Deve retornar um exception caso o texto seja invalido', () async {

    when(repository.search(any)).thenAnswer((_) async => Right(<ProductResultEntity>[]));

    var result = await usecase(null);
    expect(result | null, null);
    expect(result.isLeft(), true);
    expect(result.fold(id, id), isA<InvalidSearchText>());

    result = await usecase('');
    expect(result.fold(id, id), isA<InvalidSearchText>());

  });



}