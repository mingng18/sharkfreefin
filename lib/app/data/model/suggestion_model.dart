import 'dart:ui';

class SuggestionData {
  SuggestionData({
    required this.subtitle,
    required this.title,
    required this.body,
    required this.buttonText,
    required this.onPressed,
  });

  final String subtitle;
  final String title;
  final String body;
  final String buttonText;
  final VoidCallback onPressed;

  Map<String, dynamic> toMap() {
    return {
      'subtitle': subtitle,
      'title': title,
      'body': body,
      'buttonText': buttonText,
    };
  }

  factory SuggestionData.fromMap(Map<String, dynamic> map) {
    return SuggestionData(
      subtitle: map['subtitle'] ?? '',
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      buttonText: map['buttonText'] ?? '',
      onPressed: () {}, // Provide a default onPressed function
    );
  }

  @override
  String toString() {
    return 'SuggestionData{subtitle: $subtitle, title: $title, body: $body, buttonText: $buttonText}';
  }
}
