import 'package:custom_appbar/features/home/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExpanded = false;

  void isExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double collapsedHeight = MediaQuery.of(context).size.height * 0.15;
    final double expandedHeight = MediaQuery.of(context).size.height * 0.45;

    return Scaffold(
      appBar: CustomAppBar(
        isExpanded: isExpanded,
        collapsed: collapsedHeight,
        expanded: expandedHeight,
        function: isExpand,
      ),
      body: Center(child: Text("Home Screen", style: TextStyle(fontSize: 40))),
    );
  }
}
