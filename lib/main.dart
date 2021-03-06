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
    //이동 애니메이션 수정 참고
    //https://github.com/csells/go_router/blob/master/example/lib/transitions.dart
    initialLocation: '${MainPage.pageName}',
    routes: <GoRoute>[
      GoRoute(
        path: '${MainPage.pageName}',
        pageBuilder: (context, state) =>
            NoTransitionPage<void>(child: MainPage()),
      ),
      GoRoute(
        path: '${Sub1Page.pageName}',
        pageBuilder: (context, state) =>
            NoTransitionPage<void>(child: Sub1Page()),
      ),
      GoRoute(
        path: '${Sub2Page.pageName}',
        pageBuilder: (context, state) =>
            NoTransitionPage<void>(child: Sub2Page()),
      ),
    ],
    urlPathStrategy: UrlPathStrategy.path, //Flutter 웹 주소에 #이 들어가는 것을 막기 위한 전략
    // debugLogDiagnostics: true, //라우팅 디버깅 옵션
    // routerNeglect: true, //웹 히스토리 추적을 허용하지 않기 위한 옵션
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'GoRouter Example',
      );
}
