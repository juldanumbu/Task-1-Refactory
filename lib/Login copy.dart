import 'package:flutter/material.dart';
import 'package:task1/routes.dart';

void main() => runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: (false),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover)
          ),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(15),
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/logo.jpeg'),
                            fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(100),
                            // border: Border.all(),
                    ),
                    width: 100,
                    height: 100,
                  ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: const Text('Lupa Password',
                        style: TextStyle(fontSize: 10)),
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  Text(''),
                  Text(''),
                  const Text('Atau lanjutkan dengan'),
                  Text(''),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        // elevation: 1,
                        primary: const Color(0xFFFFFFFF)
                    ),
                      onPressed: () {},
                      child: Image.asset('assets/images/g1.png',
                        // scale: 3,
                      ),
                  ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          // elevation: 1,
                          primary: const Color(0xFFFFFFFF)
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/f1.png',
                        // scale: 1,
                  ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        // elevation: 1,
                        primary: const Color(0xFFFFFFFF)
                    ),
                      onPressed: () {},
                      child: Image.asset('assets/images/a1.png',
                        // scale: 1,
                      ),
                  ),
                  ),],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Row(
                children: <Widget>[
                  const Text('Belum punya akun?', style: TextStyle(fontSize: 10)),
                  TextButton(
                    child: const Text(
                      'Segera Daftar!',
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, MyRoutes.RegisterPage);//signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )
      )
    );
  }
}