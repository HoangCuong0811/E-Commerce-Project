import 'package:flutter/material.dart';
import 'package:flutter_project/utils/constants/image_strings.dart';
import 'package:flutter_project/utils/popups/full_screen_loader.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for lastName
  final username = TextEditingController(); // Controller for username
  final password = TextEditingController(); // Controller for password
  final firstName = TextEditingController(); // Controller for firstName
  final phoneNumber = TextEditingController(); // Controller for phoneNumber
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // form key for form validation

  /// SingUp
  Future<void> signup() async {
    try {
      ///Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your infomation....', TImages.animalIcon);

      ///check internet connectivity
      // final isConnected = await NetworkManager.instance.isConnected();
      ///form validation
      ///privacy policy check
      ///register user in the firebase authentication & save user data in the firebase
      ///save authenticated user data in firebase firestore
      ///show success message
      ///move to verify email screen
    } catch (e) {
      /// Show more Generic Error to the user
    } finally {
      /// Remove loader
    }
  }

  ///
}
