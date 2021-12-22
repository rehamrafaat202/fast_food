import 'package:flutter/material.dart';

class MyOrdrtDetails {
  String id;
  String img;
  String title;
  String subtitle;
  double price;
  int? percntage;
  MyOrdrtDetails(
      {required this.id,
      required this.img,
      required this.price,
      required this.subtitle,
      this.percntage,
      required this.title});
}

List<MyOrdrtDetails> items = [
  MyOrdrtDetails(
      id: "i1",
      img: "assets/images/burger.png",
      price: 10.00,
      subtitle: "Meat Burger",
      title: "junk food",
      percntage: -7),
  MyOrdrtDetails(
      id: "i2",
      img: "assets/images/fries.png",
      price: 8.00,
      subtitle: "French Fries",
      percntage: -3,
      title: "junk food"),
  MyOrdrtDetails(
      id: "i3",
      img: "assets/images/drink.png",
      price: 7.50,
      subtitle: "Blue Drink Cup",
      title: "Drink"),
];
