import 'package:flutter/material.dart';
import 'package:loginkelaso/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, top: 80),
                child: Image.asset(
                  'assets/image/Untitled.png',
                  height: 70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: const Text(
                  "Praktikum Labkom",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 158, 21, 12)),
                        ),
                      ),
                    )),
                    Form(
                        child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 158, 21, 12)),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Login"),
                ),
              ),
              Row(
                children: <Widget>[Container()],
              )
            ],
          ),
        ));
  }
}
