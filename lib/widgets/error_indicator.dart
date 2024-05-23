import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  final String errorMessage;

  const ErrorIndicator({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: const TextStyle(color: Colors.red),
    );
  }
}