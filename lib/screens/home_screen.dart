import 'package:categories/widgets/booking_widget.dart';
import 'package:categories/widgets/category_item.dart';
import 'package:categories/widgets/header_widget.dart';
import 'package:categories/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      // backgroundColor: Colors.white70,
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),

      body: Column(
        children: [
          TabBarWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 500,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 4,
                            child: HeaderWidget(),
                          ),
                          // Afisha
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.red,
                              child: Center(
                                child: Text(
                                  'Afisha',
                                  style: const TextStyle(fontSize: 60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CategoryItem(),
                    BookingWidget()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
