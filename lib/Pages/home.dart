import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../Controller/storeController.dart';

class Home extends GetView<StoreController> {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.storeName.value.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
