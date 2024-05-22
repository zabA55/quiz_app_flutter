import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {

  const ResultsScreen({super.key, required this.chooseAnswer, required this.restartQuiz});

  final List<String> chooseAnswer;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Udzieliłeś odpowiedzi poprawnych na $numCorrectQuestions pytania na $numTotalQuestions!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(210, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              QuestionsSummary(summaryData),
              const SizedBox(height: 40),
              OutlinedButton.icon(
                onPressed: restartQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white
                ),
                icon: const Icon(Icons.restart_alt),
                label: Text(
                  'Zacznij od nowa',
                  style: GoogleFonts.lato(
                    color: Colors.white
                  ),
                ),
              )
            ],
        )
    ),
    );
  }
}