import 'package:infinite_scroll_getx/models/pagination_filter.dart';
import 'package:infinite_scroll_getx/models/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> findAll(PaginationFilter filter);
}
