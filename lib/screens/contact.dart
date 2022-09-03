import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
          'Contact ButcherBox',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green[900]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Contact us for Resupplies and Information',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900]),
            ),
            SizedBox(height: 20.0),
            Text('Call us - Monday to Saturday, 9am to 3pm'),
            SizedBox(height: 10.0),
            Text('+234 (0) 708 9537 507\n+234 (0) 817 5305 342',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 30.0),
            Divider(height: 5.0, thickness: 1.5),
            SizedBox(height: 20.0),
            Text('Send an email (24/7)'),
            SizedBox(height: 10.0),
            Text('info@butcherbox.ng',
                style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
