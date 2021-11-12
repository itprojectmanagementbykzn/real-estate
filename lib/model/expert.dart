class ExpertModel {
  final String? id;
  final String photolink;
  final String name;
  final String type;
  final String description;
  final String job;
  final String rate;
  final String rating;
  final String jobTitle;
  final String jobDescription;
  ExpertModel({
    this.id,
    required this.photolink,
    required this.name,
    required this.type,
    required this.description,
    required this.job,
    required this.rate,
    required this.rating,
    required this.jobTitle,
    required this.jobDescription,
  });

  factory ExpertModel.fromJson(Map<String, dynamic> json, String id) =>
      ExpertModel(
        id: id,
        photolink: json['photolink'] as String,
        name: json['name'] as String,
        type: json['type'] as String,
        description: json['description'] as String,
        job: json['job'] as String,
        rate: json['rate'] as String,
        rating: json['rating'] as String,
        jobTitle: json['jobTitle'] as String,
        jobDescription: json['jobDescription'] as String,
      );

  Map<String, dynamic> toJson() => {
        'photolink': photolink,
        'name': name,
        'type': type,
        'description': description,
        'job': job,
        'rate': rate,
        'rating': rating,
        'jobTitle': jobTitle,
        'jobDescription': jobDescription,
      };
}
