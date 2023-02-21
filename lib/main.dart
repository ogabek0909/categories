import 'package:categories/providers/languages.dart';
import 'package:categories/screens/home_screen.dart';
import 'package:categories/screens/products_overview_screen.dart';
import 'package:categories/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Languages(),
      child: const MyApp(),
    ),
  );
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
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Provider.of<Languages>(context).locale,
      routerConfig: GoRouter(
        initialLocation: '/products',
        routes: [
          GoRoute(
            path: '/registration',
            name: RegistrationScreen.routeName,
            builder: (context, state) => const RegistrationScreen(),
          ),
          GoRoute(
            path: '/',
            name: 'homeScreen',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/products',
            name: ProductOverviewScreen.routeName,
            builder: (context, state) => const ProductOverviewScreen(),
          ),
        ],
      ),
    );
  }
}
/* 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            const Spacer(),
            Container(
              height: 50,
              width: 200,
              child: Placeholder(),
            ),
            const SizedBox(width: 20),
            Container(
              width: 700,
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  prefixIcon: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 15),
                    margin: const EdgeInsets.only(right: 15),
                    child: DropdownButton(
                      value: 0,
                      elevation: 0,
                      underline: Container(),
                      items: [
                        DropdownMenuItem(
                          child: Text('product'),
                          value: 0,
                        ),
                        DropdownMenuItem(
                          child: Text('company'),
                          value: 1,
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  suffixIcon: TextButton(
                    child: const Text(
                      'Search',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            Row(
              children: [
                Icon(CupertinoIcons.person, size: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(width: 20),
            DropdownButton(
              style: TextStyle(fontSize: 20),
              value: 0,
              elevation: 0,
              underline: Container(),
              items: [
                DropdownMenuItem(
                  child: Text('English'),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text('Русский'),
                  value: 1,
                ),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(width: 20),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: const Text('Favorites'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

 */
