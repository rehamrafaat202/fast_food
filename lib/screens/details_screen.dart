import 'package:fast_food_app/style/colors.dart';
import 'package:fast_food_app/widgets/junk_food.dart';
import 'package:fast_food_app/widgets/shared/shared_components.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: containerColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 25,
                        )),
                    const Text(
                      "Detail",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 25,
                        ))
                  ],
                ),
              ),
              defaultBurger(250, pad: 30.0),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: darkContainerColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: containerColor),
                              child: const Text(
                                "Order Upcoming",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Spacer(),
                            defaultPrice(Colors.white)
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35.0),
                                      topRight: Radius.circular(35.0))),
                              child: const JunkFood()))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
