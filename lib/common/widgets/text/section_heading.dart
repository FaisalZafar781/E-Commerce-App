import 'package:flutter/material.dart';

class FSectionHeading extends StatelessWidget {
  const FSectionHeading({
    super.key,
    this.textColor,
    this.showActionButtion = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButtion;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButtion)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
            ),
          )
      ],
    );
  }
}

# touched on 2025-05-28T23:01:43.893861Z
# touched on 2025-05-28T23:06:27.280998Z