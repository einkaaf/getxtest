import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Controller/storeController.dart';

class UpdateFollowerScreen extends StatelessWidget {
  UpdateFollowerScreen({Key? key}) : super(key: key);

  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          storeController.updateFollowerCount();

          Get.snackbar('Erfan GetX', 'Name Of Store Was Changed');
        },
        child: const Icon(CupertinoIcons.checkmark_alt_circle),
      ),
      body: Column(
        children: [
          TextField(
            controller: storeController.followerController,
          ),
        ],
      ),
    );
  }
}
