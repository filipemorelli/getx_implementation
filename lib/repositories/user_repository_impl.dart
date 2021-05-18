import 'package:dio/dio.dart';
import 'package:infinite_scroll_getx/models/pagination_filter.dart';
import 'package:infinite_scroll_getx/models/user_model.dart';
import 'package:infinite_scroll_getx/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  Dio _dio;

  UserRepositoryImpl(
    this._dio,
  );

  Future<List<UserModel>> findAll(PaginationFilter filter) {
    return _dio.get<List<dynamic>>('/users', queryParameters: {
      'page': filter.page,
      'limit': filter.limit,
    }).then(
      (res) =>
          res.data
              ?.map<UserModel>(
                (u) => UserModel.fromMap(u as Map<String, dynamic>),
              )
              .toList() ??
          <UserModel>[],
    );
  }
}
