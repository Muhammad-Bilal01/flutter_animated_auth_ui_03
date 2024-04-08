import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    this.initialValue,
    this.hintText,
  });

  final String? initialValue, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: const TextStyle(color: Colors.white60),
        ),
        const VerticalSpacing(of: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            controller: TextEditingController(text: initialValue),
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
