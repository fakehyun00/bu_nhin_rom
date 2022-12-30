import 'package:get/get.dart';
import '../base/base_bindings.dart';
import '../controller/summary_controller.dart';
import '../models/play_record.dart';
import '../models/section.dart';

class SummaryBinding extends BaseBindings {
  @override
  void injectService() {
    var argument = Get.arguments as List<Object>;

    Get.lazyPut<SummaryController>(
      () => SummaryController(
          playRecord: argument[0] as PlayRecord,
          section: argument[1] as Section),
    );
  }
}
