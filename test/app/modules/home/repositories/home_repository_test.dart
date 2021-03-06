import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/home/repositories/home_repository.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements Dio {}

void main() {
  HomeRepository repository;

  setUp(() {
    repository = HomeRepository(null);
  });

  group('HomeRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<HomeRepository>());
    });
  });
}
