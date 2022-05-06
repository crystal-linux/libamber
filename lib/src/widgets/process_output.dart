import 'package:flutter/material.dart';

class ProcessOutput extends StatelessWidget {
    const ProcessOutput ({
        Key? key,
        required this.input,
    }) : super(key: key);

    String input = "";
    
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
	            borderRadius: BorderRadius.circular(10),
	            border: Border.all(color: Colors.black),
	            color: Color.fromARGB(255, 15, 15, 15),
            ),
            child: SingleChildScrollView(
                reverse: true,
                child: Text(
                input,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Monospace',
                    fontWeight: FontWeight.w100,
                ),
            ),
          ),
        );
    }
}
