import 'package:flutter/material.dart';

class QuestionsScreeen extends StatefulWidget {
  const QuestionsScreeen({super.key});

  @override
  State<QuestionsScreeen> createState() => _QuestionsScreeenState();
}

class _QuestionsScreeenState extends State<QuestionsScreeen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('The Question'),
        const SizedBox(height:30),
        ElevatedButton(onPressed: (){}, child: Text('Answer 1')),
      ],),
    ) ;
  }
}