class News {
  int id;
  String title;
  String subtitle;

  News({required this.id, required this.title, required this.subtitle});
  factory News.fromJson(Map<String, dynamic> json) =>
      News(id: json['id'], title: json['title'], subtitle: json['body']);
}
