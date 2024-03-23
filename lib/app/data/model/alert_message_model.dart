class AlertMessageModel {
  AlertMessageModel(
      {required this.title,
      this.body,
      required this.buttonText,
      required this.routeName});

  final String title;
  final String? body;
  final String buttonText;
  final String routeName;

  @override
  String toString() {
    return 'AlertMessageModel{title: $title, body: $body, buttonText: $buttonText, routeName: $routeName}';
  }
}
