import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            const EdgeInsets.only(left: 30, right: 35, top: 10, bottom: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * (120 / 812),
          child: const Row(
            children: [
              BestSellerBookImage(),
              SizedBox(
                width: 30,
              ),
              BookInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
