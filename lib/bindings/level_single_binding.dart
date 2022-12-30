import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/level_single_controller.dart';

class LevelSingleBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<LevelSingleController>(
      () => LevelSingleController(),
    );
  }
}
