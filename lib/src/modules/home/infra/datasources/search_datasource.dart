import 'package:shopping/src/modules/home/infra/models/product_result_search_model.dart';

abstract class ISearchDatasource {

  Future<List<ProductResultSearchModel>> getSearch (String searchText);

}