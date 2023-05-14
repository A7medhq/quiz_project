import 'package:flutter/material.dart';

import '../constance.dart';
import '../widgets/custom_button.dart';

class ResultScreenCase2 extends StatelessWidget {
  const ResultScreenCase2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Quiz App'),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Congratulations!',
            style: TextStyle(
                color: KPrimaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/result.jpg',
            height: 230,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Your Score: 5/10',
            style: TextStyle(
                color: Colors.green, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const Text(
            'Keep up the good work!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              heightButton: 40,
              widthButton: 200,
              text: 'Back to home',
              onTap: () => Navigator.pushNamed(context, '/'))
        ]),
      ),
    );
  }
}
