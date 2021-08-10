import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping/src/modules/feed/domain/entities/post_entity.dart';
import 'package:shopping/src/modules/feed/domain/errors/errors.dart';
import 'package:shopping/src/modules/feed/domain/repositories/get_posts_repository.dart';
import 'package:shopping/src/modules/feed/domain/usecases/get_post_usecase.dart';

class GetPostsRepositoryMock extends Mock implements IGetPostsRepository {}

void main () {

  final repository = GetPostsRepositoryMock();
  final usecase = GetPostUsecaseImpl(repository);



  test('Deve retornar uma lista de posts', () async {

    when(repository.get(any)).thenAnswer((_) async => Right(<PostEntity>[]));

    final result = await usecase('123');
    expect(result, isA<Right>());
    expect(result | null, isA<List<PostEntity>>());

  });



  test('Deve retornar um exception caso a urlApi seja invalida', () async {

    when(repository.get(any)).thenAnswer((_) async => Right(<PostEntity>[]));

    var result = await usecase(null);
    expect(result | null, null);
    expect(result.isLeft(), true);
    expect(result.fold(id, id), isA<InvalidUrlApi>());

    result = await usecase('');
    expect(result.fold(id, id), isA<InvalidUrlApi>());

  });



}