import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 47, top: 10, bottom: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const AspectRatio(
            aspectRatio: 294 / 105,
            child: Row(
              children: [
                BestSellerBookImage(),
                AspectRatio(
                  aspectRatio: 2 / 1,
                  child: BookInfo(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
