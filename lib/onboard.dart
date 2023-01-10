import 'package:flutter/material.dart';
import 'package:gantari/gantari.dart';
import 'package:gantari/splash.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Onboard'),
    );
  }
}
