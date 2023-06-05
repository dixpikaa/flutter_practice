import 'package:basic_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
              'Count: ${context.watch<Counter>().count}',
                style: TextStyle(fontSize: 24),
      ),
    ),);
  }
}