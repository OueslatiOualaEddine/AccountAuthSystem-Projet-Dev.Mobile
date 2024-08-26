import 'package:flutter/material.dart';
import 'package:accountauthsystem/widgets/custom_scaffold.dart';

class Home extends StatefulWidget {
  final String email;
  final String password;
  final bool isSignUp; // true if the user just signed up, false if logged in

  const Home({
    Key? key,
    required this.email,
    required this.password,
    required this.isSignUp,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Choose a message based on whether the user signed up or logged in
    final expression = widget.isSignUp
        ? "Congratulations! \nYou're successfully Signed Up"
        : "Hey! Good Job Bro \nYou're successfully Logged In";

    final message = widget.isSignUp
        ? "Your account was created under :"
        : "Your account is under :";

    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$expression\n\n\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '$message\n',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "Email: ${widget.email}\n",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "Password: ${widget.password}\n\n\n\n\n\n",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
