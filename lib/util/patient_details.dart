import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  final String name;
  final String description;
  const PatientDetails(
      {super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade300),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              description,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600),
            ),
          )
        ],
      ),
    );
  }
}
