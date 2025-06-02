// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sample_project/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/data/questions.dart';

class QuestionsScreeen extends StatefulWidget {
  const QuestionsScreeen({super.key,required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreeen> createState() => _QuestionsScreeenState();
}

class _QuestionsScreeenState extends State<QuestionsScreeen> {

  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
  widget.onSelectAnswer(selectedAnswer);
    setState(() {
    currentQuestionIndex++;
      
    });
  }
  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex]; // Assuming you want the first question
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,

          ),
          const SizedBox(height:30),
          ...currentQuestion.getShuffledAnswers().map((answer){
            return AnswerButton(
              answerText: answer,
              onTap: (){
                answerQuestion(answer);
              },
            );
          })
        ],),
      ),
    ) ;
  }
}