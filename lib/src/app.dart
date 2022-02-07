import 'package:calculator_app/src/providers/theme_provcider.dart';
import 'package:calculator_app/src/screens/calculator_home.dart';
import 'package:calculator_app/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();

  @override
  void initState() {
    initTheme();
    super.initState();
  }

  initTheme() async {
    themeProvider.dartTheme = await themeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>.value(
      value: themeProvider,
      child: Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: themeProvider.darkTheme ? buildDarkTheme() : buildLightTheme(),
          home: const CalculatorHomePage(),
        );
      }
    ));
  }
}
