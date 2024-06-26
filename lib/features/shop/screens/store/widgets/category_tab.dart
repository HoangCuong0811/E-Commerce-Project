import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_project/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project/common/widgets/texts/section_heading.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Brands
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3
                ],
              ),

              ///--Product
              TSectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
