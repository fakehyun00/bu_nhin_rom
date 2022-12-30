import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/login_controller.dart';

class LoginBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
