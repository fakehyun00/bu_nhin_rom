import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/play_screen_controller.dart';
import '../models/section.dart';

class PlayScreenBinding extends BaseBindings {
  @override
  void injectService() {
    var argument = Get.arguments as Section;
    Get.lazyPut<PlayScreenController>(
      () => PlayScreenController(section: argument),
    );
  }
}
