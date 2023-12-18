import 'package:flutter/material.dart';
import 'package:riding_app/global/global.dart';
import 'package:riding_app/splashScreen/splash_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            fAuth.signOut();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MySplashScreen()));
          },
          child: Text("Sign Out")),
    );
  }
}
