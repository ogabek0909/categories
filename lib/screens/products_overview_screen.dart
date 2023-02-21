import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/category.dart';

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({super.key});
  static const routeName = 'product-overview-screen';

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  final List<String> image = [
    'https://www.mantruckandbus.com/fileadmin/_processed_/3/e/csm_MAN-Sylt_03_411f7f33be.jpg'
  ];
  final PageController _controller = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_controller.hasClients) {
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Platform.isLinux || Platform.isMacOS || Platform.isWindows ? const EdgeInsets.only(right: 100, top: 30, left: 100) : const EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          tables(
                            first: 'Korxona nomi:',
                            second:
                                '"SAMARQAND AVTOMOBIL ZAVODI" MCHJ qo‘shma korxonasi',
                          ),
                          tables(
                            first: 'To‘liq manzil:',
                            second:
                                'Samarqand viloyati, Samarqand sh., S.Buxoriy ko\'chasi, 5-uy',
                          ),
                          tables(
                            first: 'Ishlab chiqarish sohasi:',
                            second: 'Mashinasozlik sanoati',
                          ),
                          tables(
                            first: 'Mahsulot turlari:',
                            second: 'Avtomobillar, Yuk avtobomillari',
                          ),
                          tables(
                            first: 'Sotuv bo‘limi ma\'suli F.I.O:',
                            second: 'Israilova Munisxon Rustamovna',
                          ),
                          tables(
                            first: 'Sotuv bo‘limi raqami:',
                            second: '+998 78 140 64 64',
                          ),
                          tables(
                            first: 'Muvofiqlik sertifikatlari:',
                            second:
                                'ISO 9001:2015, ISO 14001:2015, ISO 45001:2018, ISO 50001:2018',
                          ),
                        ],
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            socialMediaButton(
                              color: Colors.red,
                              icon: Icons.email_outlined,
                              func: () {},
                              name: 'email',
                            ),
                            socialMediaButton(
                              color: Colors.orange,
                              icon: FontAwesomeIcons.firefoxBrowser,
                              func: () {},
                              name: 'browser',
                            ),
                            socialMediaButton(
                              color: Colors.blue,
                              icon: FontAwesomeIcons.telegram,
                              func: () {},
                              name: 'telegram',
                            ),
                            socialMediaButton(
                              color: Colors.red,
                              icon: FontAwesomeIcons.instagram,
                              func: () {},
                              name: 'instagram',
                            ),
                            socialMediaButton(
                              color: Colors.blue,
                              icon: FontAwesomeIcons.facebook,
                              func: () {},
                              name: 'facebook',
                            ),
                            socialMediaButton(
                              color: Colors.red,
                              icon: FontAwesomeIcons.youtube,
                              func: () {},
                              name: 'you tube',
                            ),
                            socialMediaButton(
                              color: Colors.green,
                              icon: FontAwesomeIcons.whatsapp,
                              func: () {},
                              name: 'whatsApp',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                      '''SAMARQAND AVTO ZAVOMI, MChJ QK (“SamAvto”) tijorat avtomobillari: avtobuslar, yuk mashinalari, ISUZU shassilari asosida ixtisoslashtirilgan transport vositalari va pikaplar ishlab chiqaradi. 2007 yildan boshlab zavod Yaponiyaning “ISUZU Motors LTD” va “ITOCHU Corporation” kabi kompaniyalari bilan faol hamkorlik qila boshladi.
Kompaniyaning asosiy vazifalari:
yo'lovchilarning qulay harakatlanishi va tovarlarni tezkor yetkazib berish uchun optimal echimlarni yaratish
shahar va qishloq infratuzilmasini rivojlantirish
ishonchli, xavfsiz va bardoshli mahsulotlar bilan ta'minlash'''),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal:
                      MediaQuery.of(context).size.width > 1500 ? 200 : 0),
              height: 400,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  _currentPage = value;
                },
                itemCount: 4,
                itemBuilder: (context, index) => Image.network(
                  'https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 1000,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 500,
                ),
                itemCount: 4,
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
    );
  }

  Widget socialMediaButton({
     Color? color,
    required icon,
    required VoidCallback func,
    required String name,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          IconButton(
              onPressed: func,
              icon: FaIcon(
                icon,
                size: 50,
                color: color,
              )),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  TableRow tables({
    required String first,
    required String second,
  }) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 15),
          child: Text(
            first,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
        ),
        Text(second),
      ],
    );
  }
}

/* 

import 'package:categories/models/category.dart';
import 'package:flutter/material.dart';

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
                background: Row(
                  children: [
                    Expanded(
                      child: Container(
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
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(left: 15),
                        child: Table(
                          border: TableBorder.all(),
                          children: const [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Korxona nomi',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '"SAMARQAND AVTOMOBIL ZAVODI" MCHJ qo‘shma korxonasi',
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'To‘liq manzil',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Samarqand viloyati, Samarqand sh., S.Buxoriy ko\'chasi, 5-uy',
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Ishlab chiqarish sohasi*',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mashinasozlik sanoati',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
 */
