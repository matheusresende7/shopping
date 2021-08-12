import 'package:dio/dio.dart';
import 'package:shopping/src/modules/home/infra/datasources/search_datasource.dart';
import 'package:shopping/src/modules/home/infra/models/product_result_search_model.dart';

class ApiDatasourceImpl implements ISearchDatasource {

  final Dio dio;

  ApiDatasourceImpl(this.dio);

  @override
  Future<List<ProductResultSearchModel>> getSearch(String searchText) async {

    final response = await dio.get('https://60e9de975dd7ff0017b3970a.mockapi.io/shopping');

    if (response.statusCode == 200) {
      final list = (response.data as List).map((e) => ProductResultSearchModel.fromJson(e)).toList();

      return list;
    }

  }

}