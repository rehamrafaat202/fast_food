import 'package:dotted_border/dotted_border.dart';
import 'package:fast_food_app/model/my_order_model.dart';
import 'package:fast_food_app/style/colors.dart';
import 'package:fast_food_app/widgets/order_details_widget.dart';
import 'package:fast_food_app/widgets/shared/shared_components.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                        )),
                    const Text(
                      "My Order",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 25,
                        ))
                  ],
                ),
                Container(
                  // height: 200,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      homeAndCookDeliveryBuilder(
                          icn: Icons.gps_fixed,
                          title: "Home",
                          details: "652 st marks ave",
                          edit: "Edit"),
                      const Divider(
                        color: Colors.white12,
                      ),
                      homeAndCookDeliveryBuilder(
                          icn: Icons.timelapse,
                          title: "Cook & Delivery",
                          details: "45 Minutes",
                          edit: "Choose time"),
                    ],
                  ),
                ),
                OrderDetailsWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        "old Price",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$52.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: defaultColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Check Out",
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget homeAndCookDeliveryBuilder(
          {required icn,
          required title,
          required details,
          required edit,
          bool addDashed = false}) =>
      ListTile(
        leading: Container(
          margin: const EdgeInsets.only(top: 10.0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            icn,
            color: defaultColor,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          details,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: TextButton(
          onPressed: () {},
          child: Text(
            edit,
            style: TextStyle(color: defaultColor),
          ),
        ),
      );
}
