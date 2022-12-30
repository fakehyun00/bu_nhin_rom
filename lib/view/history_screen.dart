import 'package:flutter/material.dart';
import '../base/base_view.dart';
import '../controller/history_controller.dart';

class HistoryBySectionView extends BaseView<HistoryBySectionController> {
  const HistoryBySectionView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryBySectionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HistoryBySectionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
