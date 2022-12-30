import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/profile_detail_controller.dart';

class ProfileDetailBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<ProfileDetailController>(
      () => ProfileDetailController(),
    );
  }
}
