import 'package:flutter/material.dart';
import 'package:foodplace/firebase/auth_page.dart';
import './screens/changeAddressScreen.dart';
import './screens/homeScreen.dart';
import './screens/introScreen.dart';
import './screens/newPwScreen.dart';
import './screens/sentOTPScreen.dart';
import './screens/signUpScreen.dart';
import './screens/landingScreen.dart';
import './screens/loginScreen.dart';
import './screens/splashScreen.dart';
import './screens/forgetPwScreen.dart';
import './screens/menuScreen.dart';
import './screens/moreScreen.dart';
import './screens/offerScreen.dart';
import './screens/profileScreen.dart';
import './screens/dessertScreen.dart';
import './screens/individualItem.dart';
import './screens/paymentScreen.dart';
import './screens/notificationScreen.dart';
import './screens/aboutScreen.dart';
import './screens/inboxScreen.dart';
import './screens/myOrderScreen.dart';
import './screens/checkoutScreen.dart';
import 'const/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          displaySmall: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headlineSmall: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          titleLarge: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyMedium: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
        debugShowCheckedModeBanner: false,
        
        home: SplashScreen(),
        routes: {
          AuthPage.routeName:(context) => AuthPage(),
          LandingScreen.routeName: (context) => LandingScreen(),
          // ignore: equal_keys_in_map
          LoginScreen.routeName: (context) => LoginScreen(onTap: () { },),
          SignUpScreen.routeName:(context)=>SignUpScreen(onTap: () { },),
          ForgetPwScreen.routeName:(context) => ForgetPwScreen(),
          SendOTPScreen.routeName:(context) => SendOTPScreen(),
          NewPwScreen.routeName:(context) => NewPwScreen(),
          IntroScreen.routeName:(context)=>IntroScreen(),
          HomeScreen.routeName:(context) => HomeScreen(),
          MenuScreen.routeName: (context) => MenuScreen(),
          OfferScreen.routeName: (context) => OfferScreen(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          MoreScreen.routeName: (context) => MoreScreen(),
          DessertScreen.routeName: (context) => DessertScreen(),
          IndividualItem.routeName: (context) => IndividualItem(),
          PaymentScreen.routeName: (context) => PaymentScreen(),
          NotificationScreen.routeName: (context) => NotificationScreen(),
          AboutScreen.routeName: (context) => AboutScreen(),
          InboxScreen.routeName: (context) => InboxScreen(),
          MyOrderScreen.routeName: (context) => MyOrderScreen(),
          CheckoutScreen.routeName: (context) => CheckoutScreen(),
          ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
        },
        );
  }
}
