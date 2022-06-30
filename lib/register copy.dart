import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    ));

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
              'JOIN US!',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'DAFTAR',
              style: TextStyle(fontSize: 20),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Full Name',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E-mail',
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
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: confirmController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Konfirmasi Password',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            controller: dateController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Tanggal Lahir',
            ),
          ),
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ElevatedButton(
            child: const Text('Daftar'),
            onPressed: () {
              print(nameController.text);
              print(passwordController.text);
              print(confirmController.text);
              print(userController.text);
              print(dateController.text);
              print(emailController.text);
            },
          ),
        ),
      ],
    )
        )
    );
  }
}