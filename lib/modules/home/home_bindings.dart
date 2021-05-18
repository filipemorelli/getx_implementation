import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_getx/modules/home/controller/home_controller.dart';
import 'package:infinite_scroll_getx/repositories/user_repository_impl.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepositoryImpl(Get.find<Dio>()));
    Get.lazyPut(() => HomeController(Get.find<UserRepositoryImpl>()));
  }
}
