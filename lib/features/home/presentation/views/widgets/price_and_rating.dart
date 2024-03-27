import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          r"19.99 €",
          style: Styles.textStyle20,
        ),
        const Spacer(),
        const Icon(
          Icons.star_rounded,
          color: Color.fromRGBO(255, 235, 59, 1),
        ),
        const Text(
          " 4.8",
          style: Styles.textStyle16,
        ),
        Text(
          " (2039)",
          style:
              Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
