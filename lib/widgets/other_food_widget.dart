import 'package:fast_food_app/style/colors.dart';
import 'package:flutter/material.dart';

class OtherFoodWidget extends StatelessWidget {
  const OtherFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!.withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                "assets/images/hotDog.png",
                width: 100,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "-7%",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Junk Food",
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
              const Text(
                "Frensh Fries",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    height: 1.5),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                // width: 100,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                // height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26)),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Verfied Healthecare",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("\$ 10.00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: defaultColor)),
            ),
          )
        ],
      ),
    );
  }
}
