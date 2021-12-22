import 'package:fast_food_app/model/my_order_model.dart';
import 'package:fast_food_app/style/colors.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatefulWidget {
  const OrderDetailsWidget({Key? key}) : super(key: key);

  @override
  State<OrderDetailsWidget> createState() => _OrderDetailsWidgetState();
}

class _OrderDetailsWidgetState extends State<OrderDetailsWidget> {
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
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(bottom: 10),
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
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    items[index].img,
                    width: 100,
                    height: 100,
                  ),
                  if (items[index].percntage != null)
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '${items[index].percntage!}%',
                        style: const TextStyle(
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
                  Text(
                    items[index].title,
                    style: const TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  Text(
                    items[index].subtitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 7),
                child: Column(
                  children: [
                    Text("\$ 10.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: defaultColor)),
                    SizedBox(
                      height: 20.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_outlined))
                  ],
                ),
              )
            ],
          ),
        ),
        itemCount: items.length,
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
