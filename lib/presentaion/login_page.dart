import 'package:applogicq/presentaion/Nav_bar.dart';
import 'package:applogicq/utils/font_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          //background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle4216.png"),
                    fit: BoxFit.cover)),
            child: Image(
              image: AssetImage("assets/images/Rectangle4217.png"),
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
              top: 60,
              right: 32,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NavBar()));
                  },
                  child: Text("Continue as a guest", style: bodyStyle))),

          Positioned(
            top: (MediaQuery.of(context).size.height) / 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's do something!!",
                      style: headingStyle,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "We are all about finding what's out there, planning accordingly & enjoying our time.",
                      style: bodyStyle,
                    ),
                    SizedBox(height: 48),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 127, 0, 149),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                          onPressed: () {},
                          child: Text("Sign in")),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: Color.fromARGB(255, 71, 59, 74)),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
