import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_quran/common/common.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void checkUser() async {
    Future.delayed(const Duration(seconds: 1), () {
      globalContext.replaceRoute(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      onInit: checkUser,
      body: Center(
        child: GradientText(
          'MY QURAN',
          style: AppStyle.boldTextStyle(
            fontSize: 36,
            letterSpacing: 4,
          ),
          gradient: AppColors.primaryLinearGradient,
        ),
      ),
    );
  }
}
