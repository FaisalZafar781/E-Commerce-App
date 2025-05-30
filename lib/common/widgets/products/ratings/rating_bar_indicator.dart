import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class FRatingBarIndicator extends StatelessWidget {
  const FRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: FColors.grey,
        itemBuilder: (_, __) =>
            const Icon(Iconsax.star1, color: FColors.primaryColor));
  }
}

# touched on 2025-05-28T23:00:45.109820Z
# touched on 2025-05-28T23:01:18.141869Z