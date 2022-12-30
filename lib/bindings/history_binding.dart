import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/history_controller.dart';

class HistoryBySectionBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<HistoryBySectionController>(
      () => HistoryBySectionController(),
    );
  }
}
