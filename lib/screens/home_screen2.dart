import 'package:butcherbox_vendor/butch_widgets/butch_button.dart';
import 'package:butcherbox_vendor/butch_widgets/location_drop.dart';
import 'package:butcherbox_vendor/models/ordersmodel.dart';
import 'package:butcherbox_vendor/screens/allorders.dart';
import 'package:butcherbox_vendor/screens/contact.dart';
import 'package:butcherbox_vendor/screens/home.dart';
import 'package:butcherbox_vendor/screens/productpage.dart';
import 'package:butcherbox_vendor/screens/store_screen.dart';
import 'package:butcherbox_vendor/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen2 extends StatefulWidget {
  // HomeScreen({this.location});
  //final String location;
  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
          'Vendor',
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
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/combopack.jpg'))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Orders',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.list_alt,
                            size: 25.0,
                            color: Colors.green,
                          ),
                          SizedBox(width: 30.0)
                        ],
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       new MaterialPageRoute(
                    //           builder: (context) => StoreScreen()));
                    // },
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => AllOrders()));
                    },
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/minicombopack.jpg'))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Inventory',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.notes,
                            size: 25.0,
                            color: Colors.green[600],
                          ),
                          SizedBox(width: 20.0),
                        ],
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.of(context, rootNavigator: true).push(
                    //       MaterialPageRoute(builder: (context) => AllOrders()));
                    // },
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/vendorcontact.png'))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.phone,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          SizedBox(width: 30.0)
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => Contact()));
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
