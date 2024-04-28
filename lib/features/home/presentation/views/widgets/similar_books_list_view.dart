import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (120 / 812),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding:
              const EdgeInsets.only(left: 30, right: 15, top: 8, bottom: 8),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
              child: FeaturedListViewItem(),
            );
          })),
    );
  }
}
