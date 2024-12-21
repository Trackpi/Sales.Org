import 'package:flutter/material.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Company Profile'),
        actions: [
          const Icon(Icons.quiz_outlined),
          SizedBox(width: 10),
          const Icon(Icons.bookmark_outline),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
