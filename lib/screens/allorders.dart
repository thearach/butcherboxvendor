import 'package:butcherbox_vendor/butch_widgets/account_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllOrders extends StatefulWidget {
  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
          '0rders',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green[900]),
        ),
        // actions: [
        //   IconButton(
        //       icon: Icon(Icons.person),
        //       onPressed: () {
        //         Navigator.of(context, rootNavigator: true)
        //             .pushNamed('/account');
        //       })
        // ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                AccountOptions(
                    headOption: 'Orders Received',
                    subOption: 'Orders placed by customers',
                    iconPlace: Icons.shopping_bag,
                    enter: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed('/orders');
                    }),
                SizedBox(height: 10.0),
                AccountOptions(
                    headOption: 'Orders Delivered',
                    subOption: 'Orders successfully delivered to customers',
                    iconPlace: Icons.delivery_dining,
                    enter: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed('/orders');
                    }),
              ],
            ),

            // onTap: () {
            //   Navigator.of(context, rootNavigator: true).push(
            //       MaterialPageRoute(
            //           builder: (context) => ProductPage()));
            // },
          ),
        ],
      ),
    );
  }
}
