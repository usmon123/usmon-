import 'package:daryo_clone/screens/lates_page.dart';
import 'package:flutter/material.dart';

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Daryo'),
          bottom: const  TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('Songi yangilik')),
              Tab(child: Text('Assosiy yangilik')),
              Tab(child: Text('Jahon yangilik')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
           LatestPage(),
            Container(color: Colors.white),
            Container(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
