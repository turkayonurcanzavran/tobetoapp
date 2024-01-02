import 'package:flutter/material.dart';
import 'package:tobeto_app/card/logincard.dart';
import 'package:tobeto_app/card/mytextfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/color-bacground.png"),
          fit: BoxFit.fill,
        )),
        alignment: Alignment.center,
        child: Logincard(
          theHeight: MediaQuery.of(context).size.width * 1,
          theWidth: MediaQuery.of(context).size.height * 0.5,
          theChild: Container(
            child: Column(
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: Image.asset("assets/image/tobeto-white-logo.png"),
                ),
                Mytextfield(
                  controller: usernameController,
                  hintText: "tuurkoı",
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Mytextfield(
                  controller: passwordController,
                  hintText: "turko",
                  obscureText: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
