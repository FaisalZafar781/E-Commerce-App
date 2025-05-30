import 'package:af_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class FBrandTitleText extends StatelessWidget {
  const FBrandTitleText({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
  });
  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
      // check which brand sie is requored and set the style

      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}

# touched on 2025-05-28T22:55:58.932830Z
# touched on 2025-05-28T22:56:32.053855Z
# touched on 2025-05-28T22:56:50.925240Z
# touched on 2025-05-28T23:01:22.029192Z
# touched on 2025-05-28T23:04:37.805174Z
# touched on 2025-05-28T23:05:06.875940Z