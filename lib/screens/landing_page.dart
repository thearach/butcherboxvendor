import 'package:butcherbox_vendor/screens/home.dart';
import 'package:butcherbox_vendor/screens/signing_in.dart';
import 'package:butcherbox_vendor/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          if (user == null) {
            return SigningIn.create(context);
          }
          // return Provider<Database>(
          //     create: (_) => FireStoreDatabase(uid: user.uid), child: Home());
          return Home();
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
