import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetData.test),
            ),
          ),
        ),
      ),
    );
  }
}
