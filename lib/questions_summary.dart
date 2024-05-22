import 'package:flutter/material.dart';
import 'package:quiz/text_question_and_answers.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    Color questionColor = const Color.fromARGB(255, 255, 255, 255);
    Color userAnswerColor = const Color.fromARGB(130, 255, 255, 255);
    Color correctAnswerColor = const Color.fromARGB(180, 255, 255, 255);

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            Color answerColor = const Color.fromARGB(255, 2, 134, 248);

            if (data['user_answer'] != data['correct_answer']) {
              answerColor = const Color.fromARGB(255, 214, 123, 238);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: answerColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(((data['question_index'] as int) + 1).toString()),
                  ),
                  const SizedBox(width: 10), // Add some spacing between the number and the text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextQuestionAndAnswers(text: data['question'] as String, color: questionColor),
                        const SizedBox(height: 5),
                        TextQuestionAndAnswers(text: data['user_answer'] as String, color: userAnswerColor),
                        TextQuestionAndAnswers(text: data['correct_answer'] as String, color: correctAnswerColor)
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
