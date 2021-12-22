import 'package:fast_food_app/screens/home_screen.dart';
import 'package:fast_food_app/screens/order_screen.dart';
import 'package:fast_food_app/style/colors.dart';
import 'package:fast_food_app/widgets/other_food_widget.dart';
import 'package:fast_food_app/widgets/shared/shared_components.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class JunkFood extends StatefulWidget {
  const JunkFood({Key? key}) : super(key: key);

  @override
  State<JunkFood> createState() => _JunkFoodState();
}

class _JunkFoodState extends State<JunkFood> {
  int count = 1;
  void addToCount() {
    setState(() {
      count++;
    });
  }

  void subToCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Junk Food",
              style:
                  TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Meat Burger & Cheese",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            const ReadMoreText(
              'Amet minim mollit non deserunt uliame eit si ,Amet minim mollit non deserunt uliame eit siAmet minim mollit non deserunt uliame eit si Amet minim mollit non deserunt uliame eit si .',
              trimLines: 2,
              colorClickableText: Colors.black,
              style: TextStyle(color: Colors.black38, height: 1.5),
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Read more',
              trimExpandedText: ' Read less',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Container(
                    // width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black38,
                        )),
                    child: changeCounter(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Image.network(
                        "https://bopvets.co.nz/wp-content/uploads/2020/03/31520.png",
                        width: 50,
                      ),
                      const Text(
                        "Free Shoping",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Other Foods",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const OtherFoodWidget(),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    naiveTo(context, OrderScreen());
                  },
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: defaultColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Order Nows",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                )
              ],
            )
            // Row(
            //   children: [defaultButton("Order", context, const HomeScreen())],
            // )
          ],
        ),
      ),
    );
  }

  Widget changeCounter() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                subToCount();
              },
              icon: const Icon(
                Icons.remove,
                size: 15,
              )),
          Text(count.toString()),
          IconButton(
              onPressed: () {
                addToCount();
              },
              icon: const Icon(
                Icons.add,
                size: 15,
              ))
        ],
      );
}
