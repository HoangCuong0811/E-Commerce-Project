import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/texts/section_heading.dart';
import 'package:flutter_project/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:flutter_project/features/shop/screens/product_details/widgets/product_attribute.dart';

import 'package:flutter_project/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:flutter_project/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_project/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_project/features/shop/screens/product_reviews/product_review.dart';
import 'package:flutter_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1--Product Image Slider
            const TProductImageSlider(),

            ///2--product detail
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating and share button
                  const TRatingAndShare(),

                  ///price, title, stock and broad
                  const TProductMetaData(),

                  ///attributes
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Check out'))),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const ReadMoreText(
                    'This is a description. This is a description. This is a description. This is a description. This is a description.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Review(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen()),
                          icon: const Icon(Iconsax.arrow_right_3)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
