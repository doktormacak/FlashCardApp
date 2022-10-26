// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String name;
  final int count;
  List<Lecture> lecture;
  //lecture

  UserModel({
    required this.name,
    required this.count,
    required this.lecture,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var list = json['lecture'] as List;
    List<Lecture> lectureList =
        list.map((lecture) => Lecture.fromJson(lecture)).toList();
    return UserModel(
        name: json['name'], count: json['count'] ?? '0', lecture: lectureList);
  }
}

class Lecture {
  final String name;
  final int subject;
  Lecture({
    required this.name,
    required this.subject,
  });

  factory Lecture.fromJson(Map<String, dynamic> json) {
    return Lecture(
      name: json['name'] ?? "Vekulica",
      subject: json['subject'] ?? 0,
    );
  }
}
