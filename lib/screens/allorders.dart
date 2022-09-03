import 'package:butcherbox_vendor/butch_widgets/butch_button.dart';
import 'package:butcherbox_vendor/butch_widgets/location_drop.dart';
import 'package:butcherbox_vendor/models/ordersmodel.dart';
import 'package:butcherbox_vendor/screens/home.dart';
import 'package:butcherbox_vendor/screens/productpage.dart';
import 'package:butcherbox_vendor/screens/store_screen.dart';
import 'package:butcherbox_vendor/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllOrders extends StatefulWidget {
  // HomeScreen({this.location});
  //final String location;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/butchboxbgimagedark.png'),
                  ),
                ),
                padding: EdgeInsets.all(32.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),

                  // onTap: () {
                  //   Navigator.of(context, rootNavigator: true).push(
                  //       MaterialPageRoute(
                  //           builder: (context) => ProductPage()));
                  // },
                )),
          ),
        ],
      ),
    );
  }
}
