import 'package:bookly_app/core/utils/assets_data.dart';
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
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Text(
                "Enjoy with reading Free Books",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
