import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerBookImage extends StatelessWidget {
  const BestSellerBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 105,
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.test),
          ),
        ),
      ),
    );
  }
}
