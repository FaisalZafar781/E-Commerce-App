import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FRatingsIndicator extends StatelessWidget {
  const FRatingsIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Expanded(
        flex: 11,
        child: SizedBox(
          width: FDeviceUtils.getScreenWidth(context) * 0.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: FColors.grey,
            borderRadius: BorderRadius.circular(7),
            valueColor: const AlwaysStoppedAnimation(FColors.primaryColor),
          ),
        ),
      )
    ]);
  }
}

# touched on 2025-05-28T23:02:28.417101Z
# touched on 2025-05-28T23:03:16.027202Z