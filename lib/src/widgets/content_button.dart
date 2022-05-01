import 'package:flutter/material.dart';

class ContentButton extends StatelessWidget {
  const ContentButton({
    Key? key,
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  final Widget content;
  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black45),
            color: const Color.fromARGB(255, 30, 30, 30),
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: const Color.fromARGB(0, 169, 0, 255),
              shadowColor: const Color.fromARGB(0, 169, 0, 255),
              padding: const EdgeInsets.all(10),
            ),
            child: content,
          ),
        ),
      ],
    );
  }
}
