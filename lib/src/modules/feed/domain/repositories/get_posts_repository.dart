import 'package:dartz/dartz.dart';
import 'package:shopping/src/modules/feed/domain/entities/post_entity.dart';
import 'package:shopping/src/modules/feed/domain/errors/errors.dart';

abstract class IGetPostsRepository {

  Future<Either<IFailureGetPosts, List<PostEntity>>> get (String urlApi);

}