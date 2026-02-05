import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final List<String> skills;

  const SkillsSection({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skills',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map(
                (skill) => Chip(
                  label: Text(skill),
                  backgroundColor: Colors.blue[100],
                  labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
