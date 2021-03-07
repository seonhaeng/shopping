import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/routs.dart';
import 'package:shopping_demo/screens/profile/profile_screen.dart';
import 'package:shopping_demo/screens/splash/splash_screen.dart';
import 'package:shopping_demo/theme.dart';
import 'package:shopping_demo/warpper/authentication_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

// Future<void> main() async {
//
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      );
  }
}


