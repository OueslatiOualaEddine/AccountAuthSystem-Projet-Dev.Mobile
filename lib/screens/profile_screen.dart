import 'package:accountauthsystem/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:accountauthsystem/widgets/custom_scaffold.dart';

class ProfileScreen extends StatefulWidget {
  final String imgurl;
  final String fullname;
  final String email;
  final bool isSignUp; // true if the user just signed up, false if logged in

  const ProfileScreen({
    Key? key,
    required this.imgurl,
    required this.fullname,
    required this.email,
    required this.isSignUp,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  itemProfile(String title, String subtitle) {
    return SizedBox(
      width: 300,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

        ),
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          tileColor: Colors.white,
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            ClipOval(
              child: Image.network(
                  widget.imgurl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20 ),
            itemProfile( 'Full Name : ', widget.fullname ),
            const SizedBox(height: 10),
            itemProfile('Email', widget.email ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const WelcomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Log Out')
              ),
            )
          ],
        ),
      )
    );
  }
}