import 'package:categories/providers/languages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const Spacer(),
            Container(
              height: 50,
              width: 200,
              child: Placeholder(),
            ),
            const SizedBox(width: 40),
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
                      items:  [
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
                    child: Text(
                      AppLocalizations.of(context)!.tabbar,
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(width: 40),
            // Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  label: const Text('Favorites'),
                ),
                const SizedBox(width: 20),
                DropdownButton(
                  style: TextStyle(fontSize: 20),
                  value: Provider.of<Languages>(context).dropValue,
                  elevation: 0,
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                      child: Text('English'),
                      value: 'en',
                    ),
                    DropdownMenuItem(
                      child: Text('Русский'),
                      value: 'ru',
                    ),
                    DropdownMenuItem(
                      child: Text("O'zbekcha"),
                      value: 'uz',
                    ),
                  ],
                  onChanged: (value) {
                    Provider.of<Languages>(context, listen: false)
                        .changeLanguage(Locale(value!, ''), value);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
