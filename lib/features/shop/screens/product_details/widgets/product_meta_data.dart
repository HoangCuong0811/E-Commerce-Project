import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_project/common/widgets/images/t_circular_image.dart';
import 'package:flutter_project/common/widgets/texts/product_price_text.dart';
import 'package:flutter_project/common/widgets/texts/product_title_text.dart';
import 'package:flutter_project/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_project/utils/constants/colors.dart';
import 'package:flutter_project/utils/constants/enums.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/constants/sizes.dart';
import 'package:flutter_project/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price sale price
        Row(
          children: [
            //sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            //Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: '187.5',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///title
        const TProductTitleText(title: 'Green Nike Air Shoe'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
