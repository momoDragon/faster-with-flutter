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
  final GlobalKey<FormState> _formKey = GlobalKey();

  final RegExp _emailRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static final RegExp _passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  final ValueNotifier _tncValueNotifier = ValueNotifier<bool>(false);

  _callLoginApi({required String email, required String password}) {
    // call api here
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(centerTitle: true, title: const Text('FastSocial')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'assets/images/fast-social.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _email,
                        decoration: const InputDecoration(
                            label: Text('Email'), border: OutlineInputBorder()),
                        validator: (value) {
                          if (!_emailRegExp.hasMatch(value!)) {
                            return 'Invalid email format';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _password,
                        decoration: const InputDecoration(
                            label: Text('Password'),
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (!_passwordRegExp.hasMatch(value!)) {
                            return 'Invalid password format';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              ValueListenableBuilder(
                  valueListenable: _tncValueNotifier,
                  builder: (context, value, child) {
                    return CheckboxListTile(
                        title: const Text('I agree with t&c'),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: value,
                        onChanged: (value) {
                          _tncValueNotifier.value = value;
                        });
                  }),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          if (_formKey.currentState!.validate() &&
                              _tncValueNotifier.value == true) {
                            _callLoginApi(
                                email: _email.text, password: _password.text);
                          }
                        },
                        child: const Text('Log In')),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
