import 'package:fast_food_app/screens/details_screen.dart';
import 'package:fast_food_app/style/colors.dart';
import 'package:fast_food_app/widgets/shared/shared_components.dart';
import 'package:flutter/material.dart';

class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        naiveTo(context, const DetailsScreen());
      },
      child: Container(
        // height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
          ),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  width: 60,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white12,
                  ),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text(
                  "Burger",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Junk food",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      )),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 150,
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              // top: 15,
                            ),
                            child: const Text(
                              "Meat Burger & Cheese",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 150,
                              height: 40,
                              margin: const EdgeInsets.only(left: 10),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: defaultPrice(Colors.black)),
                        ],
                      ),
                      const Spacer(),
                      defaultBurger(150, pad: 10.0)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
