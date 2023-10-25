class UserModel {
  final String id;
  final String title;
  final String language;
  final int year;
  UserModel({
    required this.id,
    required this.title,
    required this.language,
    required this.year,
  });
  factory UserModel.fromJson(Map<String, dynamic> data) => UserModel(
        id: data['id'],
        title: data['title'],
        language: data['language'],
        year: data['year'],
      );
  Map<String, dynamic> toMap() =>
      {'id': id, 'title': title, 'language': language, 'year': year};
}
