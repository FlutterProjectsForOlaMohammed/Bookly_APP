import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/custom_animated_container.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetData.logo),
          const SizedBox(
            height: 20,
          ),
          const CustomAnimatedContainer(),
        ],
      ),
    );
  }
}
