import 'dart:typed_data';

import 'package:af_store/common/widgets/icons/circular_icon.dart';
import 'package:af_store/common/widgets/images/f_circular_image.dart';
import 'package:af_store/common/widgets/images/f_rounded_images.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/// Widget for uploading images with optional editing functionality
class FImageUploader extends StatelessWidget {
  const FImageUploader({
    super.key,
    this.image,
    this.onIconButtonPressed,
    this.memoryImage,
    this.width = 100,
    this.height = 100,
    // required this.imageType,
    this.circular = false,
    this.icon = Iconsax.edit_2,
    this.top,
    this.bottom = 0,
    this.right,
    this.left = 0,
  });

  /// Whether to display the image in a circular shape
  final bool circular;

  /// URL or path of the image to display
  final String? image;

  /// Type of image (network, asset, memory, etc.)
  // final ImageType imageType;

  /// Width of the image uploader widget
  final double width;

  /// Height of the image uploader widget
  final double height;

  /// Byte data of the image (for memory images)
  final Uint8List? memoryImage;

  /// Icon to display on the image uploader widget
  final IconData icon;

  /// Offset from the top edge of the widget
  final double? top;

  /// Offset from the bottom edge of the widget
  final double? bottom;

  /// Offset from the right edge of the widget
  final double? right;

  /// Offset from the left edge of the widget
  final double? left;

  /// Callback function for when the icon button is pressed
  final void Function()? onIconButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Display the image in either circular or rounded shape
        circular
            ? FCircularImage(
                image: '',
                width: width,
                height: height,
                // imageType: imageType,
                // memoryImage: memoryImage,
                backgroundColor: FColors.primaryBackground,
              )
            : FRoundedImage(
                // image: image,
                width: width,
                height: height,
                // imageType: imageType,
                // memoryImage: memoryImage,
                backgroundColor: FColors.primaryBackground,
                imageUrl: '',
              ),
        // Display the edit icon button on top of the image
        Positioned(
          top: top,
          left: left,
          right: right,
          bottom: bottom,
          child: FCircularIcon(
            icon: icon,
            size: FSizes.md,
            color: Colors.white,
            onPressed: onIconButtonPressed,
            backgroundColor: FColors.primaryColor.withOpacity(0.9),
          ),
        )
      ],
    );
  }
}

# touched on 2025-05-28T23:02:35.656085Z
# touched on 2025-05-28T23:03:55.994653Z
# touched on 2025-05-28T23:04:41.480881Z
# touched on 2025-05-28T23:05:17.774573Z
# touched on 2025-05-28T23:05:21.543184Z
# touched on 2025-05-28T23:06:47.727660Z