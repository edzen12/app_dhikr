import 'package:flutter/material.dart';

import 'counter_section.dart';
import 'database_section.dart';
import 'top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool activity = true;

  void toggleActivity(bool toggle) {
    if (toggle != activity) {
      setState(() => activity = toggle);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              TopSection(activity, toggleActivity),
              Visibility(visible: activity, child: CounterSection()),
              DatabaseSection(),
            ],
          ),
        ),
      ),
    );
  }
}
