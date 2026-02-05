import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';
import '../widgets/header_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/education_section.dart';

class PortfolioScreen extends StatelessWidget {
  final PortfolioData data;
  const PortfolioScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional Portfolio - ${data.name}'), 
        elevation: 4,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Tablet Layout (>= 600px)
          if (constraints.maxWidth >= 600) {
            return Row(
              children: [
                Expanded(
                  flex: 1, 
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: HeaderSection(
                        name: data.name,
                        title: data.title,
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 2, child: _buildDetailsSection(context)),
              ],
            );
          } else {
            // Mobile Layout (< 600px)
            return SingleChildScrollView(
              child: _buildDetailsSection(context),
            );
          }
        },
      ),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Show header for mobile only
          if (MediaQuery.of(context).size.width < 600) ...[
            HeaderSection(
              name: data.name,
              title: data.title,
            ),
            const Divider(height: 32),
          ],
          
          // Bio Section
          const Text("About Me", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(data.bio),
            ),
          ),
          
          const SizedBox(height: 24),
          // Skills Section
          SkillsSection(skills: data.skills),
          
          const SizedBox(height: 24),
          // Education Section
          EducationSection(education: data.education),
        ],
      ),
    );
  }
}