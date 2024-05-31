import 'package:flutter/material.dart';

class MockupMoney extends StatelessWidget {
  const MockupMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Placeholder(color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Get you Money\nUnder Control",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Manage your expenses.\nSeamlessly.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          AuthButton(
            margin: EdgeInsets.only(top: 10.0),
          ),
          AuthButton(
            margin: EdgeInsets.only(top: 10.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text.rich(
              TextSpan(
                text: "Already have an account? ",
                children: <TextSpan>[
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final EdgeInsetsGeometry? margin;

  const AuthButton({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: const SizedBox(
        width: double.infinity,
        height: 50.0,
        child: Placeholder(
          color: Colors.white,
        ),
      ),
    );
  }
}
