import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PreviewRow extends StatelessWidget {
  const PreviewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (48 / 812),
            width: MediaQuery.of(context).size.width * (150 / 375),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Text(
              "19.99 €",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (48 / 812),
            width: MediaQuery.of(context).size.width * (150 / 375),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Text(
              "Free Preview",
              style: Styles.textStyle16
                  .copyWith(fontFamily: "Gilroy-Bold", color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
