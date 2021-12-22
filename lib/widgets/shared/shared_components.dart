import 'package:fast_food_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultBurger(double withWidth, {required double pad}) => Container(
      width: withWidth,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset("assets/images/burger.png"),
          Padding(
            padding: EdgeInsets.all(pad),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                "-7%",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
Widget defaultPrice(priceColor) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Price ",
          style: TextStyle(color: priceColor),
        ),
        Text(
          " \$12.00",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: priceColor),
        ),
      ],
    );
void naiveTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));

defaultButton(
  title,
  context, {
  required void Function() function,
}) =>
    InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: defaultColor,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
