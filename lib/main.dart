import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medic_medication_app/route/route_generator.dart';
import 'package:medic_medication_app/theme/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateInitialRoutes: RouteGenerator.generateInitialRoutes,
    );
  }
}
