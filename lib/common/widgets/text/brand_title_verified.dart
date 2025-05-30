import 'package:af_store/common/widgets/text/brand_title_text.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/enums.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class FBrandTitleVerified extends StatelessWidget {
  const FBrandTitleVerified({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = FColors.brandColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FBrandTitleText(
              title: title,
              maxlines: maxlines,
              textAlign: textAlign,
              brandTextSize: brandTextSize),
        ),
        const SizedBox(
          width: FSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: FSizes.iconXs,
        )
      ],
    );
  }
}

# touched on 2025-05-28T22:56:20.941700Z
# touched on 2025-05-28T23:01:28.987899Z
# touched on 2025-05-28T23:05:59.974966Z
# touched on 2025-05-28T23:06:58.394218Z