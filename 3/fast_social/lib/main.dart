import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'FastSocial',
            )),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/fast-social.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                      label: Text('Email'), border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _password,
                  decoration: const InputDecoration(
                      label: Text('Password'), border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                CheckboxListTile(
                    title: const Text('I agree with t&c'),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {}),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            print(_email.text);
                            print(_password.text);
                          },
                          child: const Text('Log In')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
