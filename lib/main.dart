import 'package:app_food/model/models.dart';
import 'package:flutter/material.dart';

import 'view/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FoodDetailsPage.idKey,
      routes: {
        SignInPage.idKey: (context) => SignInPage(),
        SignUpPage.idKey: (context) => SignUpPage(),
        AddressPage.idKey: (context) => AddressPage(),
        MainPage.idKey: (context) => MainPage(),
        FoodDetailsPage.idKey: (context) => FoodDetailsPage(
            onBackButtonPressed: () {},
            transactionModel: mockTransaction[0])
      },
    );
  }
}
