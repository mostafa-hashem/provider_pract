import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String label;
  final String details;

  const DetailsRow({super.key, required this.label, required this.details});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('$label: '), Text(details)],
    );
  }
}
