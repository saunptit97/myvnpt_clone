import 'package:flutter/material.dart';
import 'package:my_vnpt/config/theme.dart';
import 'package:my_vnpt/routes/pages.dart';
import 'package:my_vnpt/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        initialRoute: RouteNames.home,
        onGenerateRoute: (settings) => Pages.generateRoute(settings),
      ),
    );
  }
}
