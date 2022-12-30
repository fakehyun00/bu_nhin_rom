import 'package:get/get.dart';
import '../base/base_controller.dart';
import '../components/bottombar.dart';
import '../models/play_record.dart';
import '../models/section.dart';

class SummaryController extends BaseController {
  //TODO: Implement SummaryController
  SummaryController({required this.playRecord, required this.section});
  final PlayRecord playRecord;
  final Section section;
  onClickBackHome() {
    Get.off(() => const BottomBar());
  }
}
