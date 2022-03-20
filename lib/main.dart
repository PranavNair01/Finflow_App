import 'package:finflow/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'screens/signup_page.dart';
import 'screens/otp_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Map<int, Color> primaryColor =
    {
      50:Color.fromRGBO(35,40,107, .1),
      100:Color.fromRGBO(35,40,107, .2),
      200:Color.fromRGBO(35,40,107, .3),
      300:Color.fromRGBO(35,40,107, .4),
      400:Color.fromRGBO(35,40,107, .5),
      500:Color.fromRGBO(35,40,107, .6),
      600:Color.fromRGBO(35,40,107, .7),
      700:Color.fromRGBO(35,40,107, .8),
      800:Color.fromRGBO(35,40,107, .9),
      900:Color.fromRGBO(35,40,107, 1),
    };

    return MaterialApp(
      title: 'Finflow',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF23286B, primaryColor),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 2,
          iconTheme: IconThemeData(
            color: Color(0xFF23286B),
            size: 20,
          )
        ),
        fontFamily: 'Circular Std',
      ),
      routes: {
        SignUpPage.routeName: (context) => SignUpPage(),
        // OTPPage.routeName: (context) => OTPPage(),
        HomePage.routeName: (context) => HomePage(),
      },
      home: SignUpPage(),
    );
  }
}
