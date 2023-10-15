import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key}) : text = text;
//you can also use StyledText(this.text, {super.key}); This should only be use when you have the same name.
//It is simply a shortcut, which looks for a variable called text.
//So this variable here, and sets it equal to the argument value that is received here.
//In this case, the first argument that's received by this constructor function.
//"this" keyword is another keyword provided by Dart, and this is a keyword that's used inside of classes
//to refer to the class itself or to refer to the object that will be built based on the class. And we can use it here to basically tell Dart,
//"That we want to access the text variable that is defined in this class", so to say.

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 35,
      ),
    );
  }
}
