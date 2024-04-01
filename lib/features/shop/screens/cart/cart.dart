import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/appbar/appbar.dart';
import 'package:flutter_project/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project/utils/constants/colors.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/constants/sizes.dart';
import 'package:flutter_project/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          title:
              Text('cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            separatorBuilder: (_, __) =>
                const SizedBox(height: TSizes.spaceBtwSections),
            itemCount: 4,
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    ///image
                    TRoundedImage(
                      imageUrl: TImages.productImage1,
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(TSizes.sm),
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.darkerGrey
                          : TColors.light,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
