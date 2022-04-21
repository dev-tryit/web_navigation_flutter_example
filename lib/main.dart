import 'package:appbar_flutter_example/page/MainPage.dart';
import 'package:appbar_flutter_example/page/Sub1Page.dart';
import 'package:appbar_flutter_example/page/Sub2Page.dart';
import 'package:appbar_flutter_example/page/UnknownPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
    initialLocation: '${MainPage.pageName}',
    routes: <GoRoute>[
      GoRoute(
        path: '${MainPage.pageName}',
        builder: (BuildContext context, GoRouterState state) =>MainPage(),
      ),
      GoRoute(
        path: '${Sub1Page.pageName}',
        builder: (BuildContext context, GoRouterState state) => Sub1Page(),
      ),
      GoRoute(
        path: '${Sub2Page.pageName}',
        builder: (BuildContext context, GoRouterState state) => Sub2Page(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    title: 'GoRouter Example',
  );
  // // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: '웹페이지입니다',
  //     home: MainPage(),
  //     initialRoute: "/${MainPage.pageName}",
  //     onGenerateRoute: (settings) {
  //       if (settings.name == "/${Sub1Page.pageName}") {
  //         return PageRouteBuilder(
  //           settings: settings,
  //           pageBuilder: (_, __, ___) => Sub1Page(),
  //         );
  //       }
  //       return PageRouteBuilder(
  //         settings: settings,
  //         pageBuilder: (_, __, ___) => MainPage(),
  //       );
  //     },
  //   );
  // }
}
