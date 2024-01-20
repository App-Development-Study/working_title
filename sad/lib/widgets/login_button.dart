import 'package:flutter/material.dart';

Widget loginButton(context, image, title, tColor, bColor) {
  return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: bColor),
          color: bColor,
          boxShadow: const [BoxShadow(offset: Offset(1, 1), blurRadius: 5, color: Colors.black12)]),
      width: 332,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              child: Image(
                  image: AssetImage(
                image,
              ))),
          const SizedBox(width: 10),
          Text(title,
              style: TextStyle(
                  color: tColor,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ],
      ));
}

Widget localLoginButton(context, title, tColor, bColor) {
  return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bColor,
      ),
      width: 332,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Text(title,
              style: TextStyle(
                  color: tColor,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ],
      ));
}
