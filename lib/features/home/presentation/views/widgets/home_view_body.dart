import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListView(),
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
        )
      ],
    );
  }
}
