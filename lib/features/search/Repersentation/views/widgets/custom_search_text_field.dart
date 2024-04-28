import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 96, 138, 172),
            Color.fromARGB(255, 70, 177, 206),
            Colors.white,
          ])),
      child: TextField(
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
            decorationThickness: 0),
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            suffixIcon: CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 26,
              child: CircleAvatar(
                backgroundColor: const Color(0xff90d0e1),
                radius: 22,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: kPrimaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.w600),
            filled: true,
            fillColor: Colors.transparent,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
