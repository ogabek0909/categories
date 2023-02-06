import 'package:categories/screens/home_screen.dart';
import 'package:categories/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            name: 'homeScreen',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'products',
                name: ProductOverviewScreen.routeName,
                builder: (context, state) => const ProductOverviewScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
