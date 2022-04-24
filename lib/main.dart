import 'package:app_login/screens/screen.dart';
import 'package:app_login/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp( const AppState());

class AppState extends StatelessWidget {
  const  AppState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: ( _ ) => ProductsService(), lazy: true)

      ],
       child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
       'login': (_) => const LoginScreen(),
       'home': (_) => const HomeScreen(),
       'product': (_) => const ProductScreen()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.indigo
        ),
        floatingActionButtonTheme:  const FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
          elevation: 0
        )
      ),
      );
  }
}