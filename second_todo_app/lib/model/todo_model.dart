class Todo {
  final String title;
  final String description;
  final String id;
  final bool isCompleted;

  Todo(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted});

  // factory Todo.fromJson(Map<String, dynamic> json) {
  //   return Todo(
  //       id: json['id'], title: json['title'], description: json['description']);
  // }
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Untitled',
      description: json['description'] ?? '',
      isCompleted: json['is_completed'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'is_completed': isCompleted,
    };
  }
}
