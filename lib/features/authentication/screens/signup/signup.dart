import 'package:flutter/material.dart';
import 'package:flutter_project/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_project/common/widgets/login_signup/social_button.dart';
import 'package:flutter_project/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              /// Form
              const TSignupForm(),

              ///Divider
              const SizedBox(height: TSizes.spaceBtwItems),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              ///Social button
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
