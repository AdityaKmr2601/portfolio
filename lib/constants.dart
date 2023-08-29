import 'package:flutter/material.dart';

class Constants {
  Text heading({required String title}) {
    return Text(
      "$title:",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        letterSpacing: 2,
      ),
    );
  }

  Text subheading({required String title}) {
    return Text(
      "$title:",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
    );
  }

  dynamic Skill(
      {double sc = 20,
      required String title,
      required String image,
      double hg = 0}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset(
            'images/$image',
            scale: sc,
          ),
          SizedBox(
            height: hg,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  dynamic Project({required String title, required String image}) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              "images/$image",
              scale: 6,
            ),
            // Icon(
            //   Icons.phone_android_rounded,
            //   size: 70,
            // ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
