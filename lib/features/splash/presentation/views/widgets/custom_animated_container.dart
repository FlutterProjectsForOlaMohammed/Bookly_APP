import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  Offset offset = const Offset(0, 2);
  @override
  void initState() {
    super.initState();
    updateOffset();
    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: offset,
      duration: const Duration(seconds: 1),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Text(
          "Enjoy with Reading Free Books",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

  void updateOffset() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => {
        setState(
          () {
            offset = Offset.zero;
          },
        ),
      },
    );
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3)).then(
      (_) {
        Get.to(
          () => const HomeView(),
          transition: Transition.downToUp,
          duration: kTransitionDuration,
        );
      },
    );
  }
}
