import 'package:flutter/material.dart';

class LandingContent extends StatelessWidget {
  const LandingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Open Member Recruitment',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
          const SizedBox(height: 16,),
          Text(
            'Hanya untuk bulan April - Mei 2023',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blueGrey.shade300,
            ),
          )
        ],
      ),
    );
  }
}