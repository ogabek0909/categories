import 'package:categories/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({super.key});
  static const routeName = 'product-overview-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 80, left: 80, bottom: 12),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 400,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  // width: double.infinity,
                  // height: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/13672920/pexels-photo-13672920.jpeg?auto=compress&cs=tinysrgb&w=1600',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(thickness: 4),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          DUMMY_CATEGORY[index].imgUrl,
                        ),
                      ),
                    ),
                  ),
                );
              }, childCount: DUMMY_CATEGORY.length),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                mainAxisExtent: 500,
              ),
            )
          ],
        ),
      ),
    );
  }
}


/* 
 SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/13672920/pexels-photo-13672920.jpeg?auto=compress&cs=tinysrgb&w=1600',
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 4),
              Expanded(
                child: GridView.builder(
                 
                  itemCount: DUMMY_CATEGORY.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 500,
                  ),
                  itemBuilder: (context, index) => GridTile(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            DUMMY_CATEGORY[index].imgUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
 */