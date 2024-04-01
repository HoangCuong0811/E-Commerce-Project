import "package:flutter/material.dart";
import "package:flutter_project/common/widgets/appbar/appbar.dart";
import "package:flutter_project/common/widgets/products/ratings/rating_indicator.dart";
import "package:flutter_project/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart";
import "package:flutter_project/features/shop/screens/product_reviews/widgets/user_review_card.dart";
import "package:flutter_project/utils/constants/sizes.dart";

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: const TAppBar(
        title: Text('Review & Rating'),
        showBackArrow: true,
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and reviews from people who use the same type of device that you use are verified"),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Overall product rating
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text("12.122", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///User Review List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
