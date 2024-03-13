class ApodModel {
  final DateTime date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  ApodModel({
    DateTime? date,
    String? explanation,
    String? hdurl,
    String? mediaType,
    String? serviceVersion,
    String? title,
    String? url,
  })  : date = date ?? DateTime.now(),
        explanation = explanation ?? "",
        hdurl = hdurl ?? "",
        mediaType = mediaType ?? "",
        serviceVersion = serviceVersion ?? "",
        title = title ?? "",
        url = url ?? "";

  factory ApodModel.fromJson(Map<String, dynamic> json) {
    return ApodModel(
      date: DateTime.parse(json['date']),
      explanation: json['explanation'],
      hdurl: json['hdurl'],
      mediaType: json['media_type'],
      serviceVersion: json['service_version'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'explanation': explanation,
      'hdurl': hdurl,
      'media_type': mediaType,
      'service_version': serviceVersion,
      'title': title,
      'url': url,
    };
  }
}
