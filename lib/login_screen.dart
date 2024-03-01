// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tes_magang_a/homepage_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "HATOCA",
                  style: TextStyle(
                      fontSize: 48,
                      color: HexColor("#8b0000"),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFAFAFA),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Color(0xff9E9E9E)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: _isObscure,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFAFAFA),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xff9E9E9E)),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: HexColor("#8b0000"),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: MaterialButton(
                        minWidth: 300,
                        height: 50,
                        color: HexColor("#8b0000"),
                        child: Text("Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomepageScreen(),
                              ));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        minWidth: 100,
                        height: 50,
                        color: HexColor("#8b0000"),
                        child: Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Dont Have an Account ?"),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: HexColor("#8b0000"),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  )
                ])
              ],
            )),
          ),
        ),
      ),
    );
  }
}
