import 'package:categories/models/category.dart';
import 'package:categories/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 80, left: 80),
      child: Container(
        width: double.infinity,
        height: 450,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                context.goNamed(ProductOverviewScreen.routeName);
              },
              child: Container(
                height: double.infinity,
                width: deviceSize.width > 1000 ? 300 : deviceSize.width - 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/13672920/pexels-photo-13672920.jpeg?auto=compress&cs=tinysrgb&w=1600',
                    ),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.1),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Apple Products',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            if (deviceSize.width > 1000)
              Expanded(
                flex: 9,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisExtent: 225,
                    // childAspectRatio: 1.61,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          image: NetworkImage(DUMMY_CATEGORY[index].imgUrl),
                        ),
                        border: Border.all(color: Colors.grey),
                        // border: Border(
                        //   right: BorderSide(color: Colors.blueGrey),
                        //   bottom: BorderSide(color: Colors.blueGrey),
                        // ),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.white70,
                            Colors.white30,
                          ],
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: const EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.5),
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.1),
                            ],
                          ),
                        ),
                        child: Text(
                          DUMMY_CATEGORY[index].name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
