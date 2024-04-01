import 'package:flutter/material.dart';
import 'package:flutter_project/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        // check which brandsize is required and set that style
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextSizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
