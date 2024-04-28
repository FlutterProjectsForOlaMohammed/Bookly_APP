import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "You can also like",
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.w900, fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooks(),
      ],
    );
  }
}
