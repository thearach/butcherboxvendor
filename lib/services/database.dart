import 'package:butcherbox_vendor/models/ordersmodel.dart';
import 'package:butcherbox_vendor/services/api_path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:butcherbox_vendor/services/firestore_service.dart';

abstract class Database {
  Future<void> createOrder(Order order);
  Stream<List<Order>> ordersStream();
}

class FireStoreDatabase implements Database {
  FireStoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;
  final _service = FireStoreService.instance;

  Future<void> createOrder(Order order) => _service.setData(
      //path: APIPath.order(uid, 'orderdetails'), data: order.toMap());
      path: APIPath.order(uid, 'orderdetails'),
      data: order.toJson());

  Stream<List<Order>> ordersStream() => _service.collectionStream(
        path: APIPath.orders(uid),
        // builder: (data) => Order.fromMap(data),
      );
}
