import 'package:categories/widgets/registration_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  static const routeName = 'registration-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://www.athletadesk.com/wp-content/uploads/2016/08/join-background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                RegistrationWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
