import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping/src/modules/home/external/datasources/api_datasource_impl.dart';
import '../../utils/api_response.dart';

class DioMock extends Mock implements Dio {}

void main () {

  final dio = DioMock();
  final datasource = ApiDatasourceImpl(dio);

  test('Deve retornar uma lista de ProductResultEntity', () async {

    when(dio.get(any)).thenAnswer((_) async => Response(data: jsonDecode(apiResponse), statusCode: 200));

    final future = datasource.getSearch('searchText');
    expect(future, completes);

  });

}