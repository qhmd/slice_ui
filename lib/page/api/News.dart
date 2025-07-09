class News {
  final int id;
  final String title;
  final String body;

  const News({required this.id, required this.title, required this.body});
  factory News.fromJson(Map<String, dynamic> json) =>
    News(
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
}