import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FTabBar extends StatelessWidget implements PreferredSizeWidget {
  const FTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Colors.black : Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FColors.primaryColor,
        labelColor: dark ? FColors.white : FColors.primaryColor,
        unselectedLabelColor: FColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}

# touched on 2025-05-28T23:02:06.461088Z
# touched on 2025-05-28T23:03:45.473478Z
# touched on 2025-05-28T23:04:11.763758Z
# touched on 2025-05-28T23:04:45.005707Z