import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerBookImage extends StatelessWidget {
  const BestSellerBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
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
