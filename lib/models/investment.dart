class Investment {
  final String title;
  final String description;
  final String link;

  Investment(
      {required this.title, required this.description, required this.link});

  factory Investment.fromJson(Map<String, dynamic> json) {
    return Investment(
      title: json['title'],
      description: json['description'],
      link: json['link'],
    );
  }
}
