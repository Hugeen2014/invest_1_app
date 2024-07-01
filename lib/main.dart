import 'package:flutter/material.dart';
import 'package:invest_1_app/providers/investment_provider.dart';
import 'package:provider/provider.dart';
import 'package:invest_1_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InvestmentProvider(),
      child: MaterialApp(
        title: 'Investment App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
