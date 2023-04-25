import 'package:flutter/material.dart';
import 'package:navigation/ui/pages/home_page.dart';
import 'package:navigation/ui/pages/login_page.dart';
import 'package:navigation/ui/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const LoginPage(),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const LoginPage(),
      //   '/home': (context) => const HomePage(),
      //   '/profile': (context) => const ProfilePage(userId: userId)
      // },

      onGenerateRoute: (settings) {
        final args =
            settings.arguments == null ? {} : settings.arguments as Map;

        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const LoginPage());
          case '/home':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/profile':
            return MaterialPageRoute(
                builder: (context) => ProfilePage(
                      userId: args['userId'],
                    ));
          default:
            return MaterialPageRoute(builder: (context) => const LoginPage());
        }
      },
    );
  }
}
