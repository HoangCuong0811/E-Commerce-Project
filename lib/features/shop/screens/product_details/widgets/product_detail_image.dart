import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/appbar/appbar.dart';
import 'package:flutter_project/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:flutter_project/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_project/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project/utils/constants/colors.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/constants/sizes.dart';
import 'package:flutter_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            ///Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(TImages.productImage2))),
              ),
            ),

            ///-Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.spaceBtwItems,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage1,
                  ),
                ),
              ),
            ),

            ///Appbar icons
            const TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}
