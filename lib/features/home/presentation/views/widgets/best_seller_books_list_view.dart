import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BestSellerBookItem();
      },
    );
  }
}
