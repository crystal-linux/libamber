import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
    const WidgetList({
        Key? key,
        required this.children
    }) : super(key: key);

    final List<Widget> children;
    
    @override
    Widget build(BuildContext context) {
        return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 40),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                  color: const Color.fromARGB(255, 30, 30, 30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(-2, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    children: children,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );

    }
    
}
