import 'package:apod/src/utils/extensions.dart';

class ApodModel {
  final DateTime date;
  final String explanation;
  final String copyright;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  ApodModel({
    DateTime? date,
    String? explanation,
    String? copyright,
    String? hdurl,
    String? mediaType,
    String? serviceVersion,
    String? title,
    String? url,
  })  : date = date ?? DateTime.now(),
        explanation = explanation ?? "",
        copyright = copyright ?? "",
        hdurl = hdurl ?? "",
        mediaType = mediaType ?? "",
        serviceVersion = serviceVersion ?? "",
        title = title ?? "",
        url = url ?? "";

  factory ApodModel.fromJson(Map<String, dynamic> json) {
    return ApodModel(
      date: json.getDate('date'),
      explanation: json.getString('explanation'),
      copyright: json.getString('copyright'),
      hdurl: json.getStringFromKeys(['thumbnail_url', 'hdurl', 'url']),
      mediaType: json.getString('media_type'),
      serviceVersion: json.getString('service_version'),
      title: json.getString('title'),
      url: json.getStringFromKeys(['thumbnail_url', 'url']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toDateString(),
      'explanation': explanation,
      'hdurl': hdurl,
      'copyright': copyright,
      'media_type': mediaType,
      'service_version': serviceVersion,
      'title': title,
      'url': url,
    };
  }
}
