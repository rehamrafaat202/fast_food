import 'package:fast_food_app/style/colors.dart';
import 'package:fast_food_app/widgets/popular_food_widger.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isClicked = false;
  void changeIcon() {
    setState(() {
      isClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Fastfood",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            backgroundColor: defaultColor,
                            child: Image.asset("assets/images/profile.png"),
                          )
                          //   const Image(
                          //       image: AssetImage("assets/images/profile.png")),
                          // )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 10),
                      child: Text(
                        "Hi iques,",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Wellcome Back !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18.0),
                      child: Text(
                        "Popular Food",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const PopularFoodWidget(),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Category Food",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 25),
                          margin: const EdgeInsets.only(right: 10),
                          height: 270,
                          width: 170,
                          decoration: BoxDecoration(
                              color: defaultColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "French Fries",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                width: 130,
                                margin: EdgeInsets.only(top: 10),
                                child: const Text(
                                  "the most delicious in this summer ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      height: 1.5),
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Image.asset("assets/images/fries.png"),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            dishes(
                              "Noodles",
                              "assets/images/noddle.png",
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            dishes(
                              "Pizza",
                              "assets/images/pizza.png",
                            ),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      changeIcon();
                    },
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: isClicked ? containerColor : Colors.black,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.lock,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 30,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dishes(
    title,
    imge,
  ) =>
      Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "4.9",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Expanded(
                child: Row(
              children: [
                const Spacer(),
                Image.asset(imge),
              ],
            ))
          ],
        ),
      );
}
