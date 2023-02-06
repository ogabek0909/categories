import 'package:categories/widgets/category_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CategoryItem(),
            CategoryItem(),
          ],
        ),
      ),
    );
  }
}
