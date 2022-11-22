import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_noticias/articles/widgets/widgets.dart';
import 'package:app_noticias/articles/controllers/controller.dart';
import 'package:app_noticias/widgets/widgets.dart';

class HeadlinesScreen extends StatelessWidget {
  const HeadlinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    Get.put(ArticleController());
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          const CustomAppbar(title: 'Noticias'),
          TabBar(
            labelColor: primaryColor,
            unselectedLabelColor: Colors.black38,
            isScrollable: true,
            tabs: const [
              Tab(text: 'Novedades'),
              Tab(text: 'Futbol'),
              Tab(text: 'Nacionales'),
              Tab(text: 'Internacionales')
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                ArticleList(),
                Icon(Icons.directions_car_filled_outlined),
                Icon(Icons.directions_ferry_rounded),
                Icon(Icons.directions_ferry_outlined),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
