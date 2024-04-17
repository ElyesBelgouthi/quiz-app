import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              children: [
                Text(((e["question_index"] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        e["question"] as String,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        e["user_answer"] as String,
                      ),
                      Text(
                        e["correct_answer"] as String,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
