import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      title: '青空文庫',
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
        backgroundColor: Colors.white70,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white70,
      ),
      home: const TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text('青空文庫', style: TextStyle(color: Colors.black87, fontFamily: 'SansJP', height: 700),),
            title: const Text('青空文庫', style: TextStyle(color: Colors.black87, fontFamily: 'SansJP', fontWeight: FontWeight.bold),),
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
            elevation: 0.0,
            bottom: const TabBar(
              indicatorColor: Colors.black87,
              labelColor: Colors.black87,
              labelStyle: TextStyle(fontFamily: 'DoHyeon', fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: '랭킹'),
                Tab(text: '작가'),
                Tab(text: '작품'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ExplicitListConstructing(),
              Center(child: Text('작가')),
              Center(child: Text('작품')),
            ],
          ),
        ),
      ),
    );
  }
}

class ExplicitListConstructing extends StatelessWidget {
  const ExplicitListConstructing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        Text('랭킹'),
        Text('랭킹'),
        Text('랭킹'),
        Text('랭킹'),
        Center(child: Text('랭킹')),
        Center(child: Text('랭킹')),
        Center(child: Text('랭킹')),
        Center(child: Text('랭킹')),
      ],
    );
  }
}
