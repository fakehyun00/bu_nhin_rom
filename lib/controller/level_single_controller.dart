import 'package:get/get.dart';
import '../base/base_controller.dart';
import '../models/section.dart';
import '../routes/app_pages.dart';
import '../services/database.dart';

class LevelSingleController extends BaseController {
  //TODO: Implement LevelSingleController

  RxList<Section> listSection = <Section>[].obs;
  Rx<bool> isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await getDataSection();
    isLoading(false);
  }

//Lấy danh sách các ải

  getDataSection() async {
    try {
      listSection.value = await DataBaseMethod.instance.getSections();
      print(listSection.length);
    } catch (e) {
      print("getDataSection$e");
      listSection.value = [];
    }
  }

  onClickStartPlay(int index) {
    Get.toNamed(Routes.PLAY_SCREEN, arguments: listSection[index]);
  }
}
