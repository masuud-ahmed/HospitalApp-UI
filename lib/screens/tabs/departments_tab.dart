import 'package:flutter/material.dart';
import '/models/departments.dart'; // Updated import path

class DepartmentsTab extends StatefulWidget {
  const DepartmentsTab({super.key});

  @override
  State<DepartmentsTab> createState() => _DepartmentsTabState();
}

class _DepartmentsTabState extends State<DepartmentsTab> {
  final List<Department> departments = [
    Department(
      name: 'Oncology Department',
      description: 'Specialized cancer treatment and care services.',
    ),
    Department(
      name: 'Cardiology Department',
      description: 'Heart and cardiovascular system treatment.',
    ),
    Department(
      name: 'Outpatient Department (OPD)',
      description: 'General consultation and primary care services.',
    ),
    Department(
      name: 'Radiology Department',
      description: 'Medical imaging and diagnostic services.',
    ),
    Department(
      name: 'Rehabilitation Department',
      description: 'Physical therapy and rehabilitation services.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: departments.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Text(departments[index].name),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(departments[index].description),
            ),
          ],
          onExpansionChanged: (expanded) {
            setState(() {
              departments[index].isExpanded = expanded;
            });
          },
        );
      },
    );
  }
}