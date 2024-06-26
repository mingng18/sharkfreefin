class QuestionnaireModel {
  final int number;
  final String title;
  final QuestionType type;
  final List<Map<String, String>>? answers;
  final String? category;

  QuestionnaireModel({
    required this.number,
    required this.title,
    required this.type,
    this.answers,
    this.category,
  });

  factory QuestionnaireModel.fromMap(Map<String, dynamic> map) {
    return QuestionnaireModel(
      number: map['number'] ?? 0,
      title: map['title'] ?? '',
      category: map['category'] ?? '',
      type: map['type'] == 'mcq'
          ? QuestionType.mcq
          : map['type'] == 'multipleCard'
              ? QuestionType.multipleCard
              : QuestionType.input,
      answers: (map['answers'] as List<dynamic>?)
          ?.map((answer) => (answer as Map<String, dynamic>)
              .map((key, value) => MapEntry(key, value.toString())))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'title': title,
      'type': type.value,
      'answers': answers,
      'category': category,
    };
  }

  @override
  String toString() {
    return 'QuestionnaireModel{number: $number, title: $title, category: $category, type: ${type.value}, answers: $answers}';
  }
}

enum QuestionType { mcq, input, multipleCard }

extension QuestionTypeExtension on QuestionType {
  String get value {
    switch (this) {
      case QuestionType.mcq:
        return 'mcq';
      case QuestionType.input:
        return 'input';
      case QuestionType.multipleCard:
        return 'multipleCard';
    }
  }
}
