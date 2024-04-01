import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/layouts/grid_layout.dart';

import 'package:flutter_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_project/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shape/containers/primary_header_container.dart';

import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Promo Slider
                    const TPromoSlider(banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ]),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    //Heading
                    TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Popular product
                    TGridLayout(
                        itemCount: 2,
                        itemBuilder: (_, index) => const TProductCardVertical())
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
