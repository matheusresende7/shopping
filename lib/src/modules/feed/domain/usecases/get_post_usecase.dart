import 'package:dartz/dartz.dart';
import 'package:shopping/src/modules/feed/domain/entities/post_entity.dart';
import 'package:shopping/src/modules/feed/domain/errors/errors.dart';
import 'package:shopping/src/modules/feed/domain/repositories/get_posts_repository.dart';

abstract class IGetPostUsecase {
  Future<Either<IFailureGetPosts, List<PostEntity>>> call (String urlApi);
}

class GetPostUsecaseImpl implements IGetPostUsecase {

  final IGetPostsRepository repository;

  GetPostUsecaseImpl(this.repository);

  @override
  Future<Either<IFailureGetPosts, List<PostEntity>>> call (String urlApi) async {

    if (urlApi == null || urlApi == '') {
      return Left(InvalidUrlApi());
    }

    return repository.get(urlApi);

  }

}