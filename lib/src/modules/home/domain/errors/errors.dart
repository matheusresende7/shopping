abstract class IFailureSearch implements Exception {}

class InvalidSearchText implements IFailureSearch {}

class DatasourceError implements IFailureSearch {
  final String message;

  DatasourceError({this.message});
}