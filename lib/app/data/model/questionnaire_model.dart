class QuestionnaireModel {
  final int number;
  final String title;
  final QuestionType type;
  final List<Map<String, String>>? answers;

  QuestionnaireModel({
    required this.number,
    required this.title,
    required this.type,
    this.answers,
  });

  factory QuestionnaireModel.fromMap(Map<String, dynamic> map) {
    return QuestionnaireModel(
      number: map['number'] ?? 0,
      title: map['title'] ?? '',
      type: map['type'] == 'mcq' ? QuestionType.mcq : QuestionType.input,
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
    };
  }

  @override
  String toString() {
    return 'QuestionnaireModel{number: $number, title: $title, type: ${type.value}, answers: $answers}';
  }
}

enum QuestionType {
  mcq,
  input,
}

extension QuestionTypeExtension on QuestionType {
  String get value {
    switch (this) {
      case QuestionType.mcq:
        return 'mcq';
      case QuestionType.input:
        return 'input';
    }
  }
}
