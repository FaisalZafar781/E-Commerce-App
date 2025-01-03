import 'package:af_store/common/widgets/login_signup_widgets/form_divider.dart';
import 'package:af_store/common/widgets/login_signup_widgets/social_buttons.dart';
import 'package:af_store/features/authentication/screens/signup/widget/signup_form.dart';

import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(
                FSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    FTexts.signUpTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //form
                  const FSignupForm(),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //divider
                  const FFormDivider(
                    dividerText: FTexts.signUpWith,
                  ),

                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //social media buttons
                  const FSocialButtons(),
                ],
              )),
        ));
  }
}

# touched on 2025-05-28T23:01:52.216736Z
# touched on 2025-05-28T23:03:48.976247Z
# touched on 2025-05-28T23:04:07.931863Z