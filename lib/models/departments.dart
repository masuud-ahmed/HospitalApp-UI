// lib/models/department.dart
class Department {
  final String name;
  final String description;
  bool isExpanded;

  Department({
    required this.name,
    required this.description,
    this.isExpanded = false,
  });
}