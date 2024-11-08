import 'package:flutter/material.dart';
import 'package:mudent_app/core/mudent_navigator/src/mudent_navigator.dart';
import 'package:mudent_app/core/mudent_navigator/src/utils/utils.dart';
import 'package:mudent_app/features/landing/utils/utils.dart';
import 'package:mudent_app/utils/constants/global_assets.dart';

import '../../config/config.dart';
import 'widgets/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: DesignSystem.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(GlobalAssets.mainLogo))),
              ),
              SizedBox(
                child: Column(
                  children: [
                    LandingButton(
                      label: LandingPageMsg.loginBtn,
                      onPressed: () {
                        MudentNavigator.instance.go(RoutePaths.loginPage);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LandingButton(
                      label: LandingPageMsg.registerBtn,
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
