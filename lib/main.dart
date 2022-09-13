//import 'package:butcherbox_vendor/butch_widgets/count.dart';
import 'package:butcherbox_vendor/logic/StoreLogic.dart';
import 'package:butcherbox_vendor/models/products.dart';
import 'package:butcherbox_vendor/screens/account_screen.dart';
//import 'package:butcherbox_vendor/screens/accountinformation.dart';
import 'package:butcherbox_vendor/screens/home.dart';
import 'package:butcherbox_vendor/screens/landing_page.dart';
//import 'package:butcherbox_vendor/screens/locations.dart';
import 'package:butcherbox_vendor/screens/orders.dart';
import 'package:butcherbox_vendor/screens/signing_in.dart';
import 'package:butcherbox_vendor/screens/store_screen.dart';
//import 'package:butcherbox_vendor/screens/thecart.dart';
import 'package:butcherbox_vendor/screens/theshop.dart';
import 'package:butcherbox_vendor/services/auth.dart';
import 'package:butcherbox_vendor/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*void main() {
  runApp(MainApp());
}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final auth = Provider.of<AuthBase>(context, listen: false);
    // List<Products> _cart = [];
    int sum;
    final auth = Auth();
    User user = auth.currentUser;

    return MultiProvider(
      providers: [
        Provider<AuthBase>(create: (context) => Auth()),
        Provider<Database>(create: (_) => FireStoreDatabase(uid: user.uid)),
        //ChangeNotifierProvider<Count>(create: (context) => Count()),
        ChangeNotifierProvider<StoreLogic>(
            create: (_) => StoreLogic(), child: TheShop()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Butcher Box Vendor',
        initialRoute: '/',
        routes: {
          '/': (context) => LandingPage(),
          '/store': (context) => StoreScreen(),
          //'/cart': (context) => Cart(_cart, sum),
          //'/account': (context) => AccountScreen(),
          '/orders': (context) => Orders(),
          //'/accountinfo': (context) => AccountInfo(),
          //'/locations': (context) => Locations(),
        },
        /*home: SignInPage(
              //  auth: Auth(),
              ),*/
      ),
    );
  }
}
