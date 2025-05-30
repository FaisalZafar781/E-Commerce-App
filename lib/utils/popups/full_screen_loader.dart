import 'package:af_store/common/widgets/loaders/animation_loader.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: FHelperFunctions.isDarkMode(Get.context!)
              ? FColors.dark
              : FColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              FAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}

# touched on 2025-05-28T22:56:05.755744Z
# touched on 2025-05-28T23:02:25.123349Z
# touched on 2025-05-28T23:04:31.080399Z
# touched on 2025-05-28T23:06:14.632488Z