
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/utils/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApodModel', () {
    test('should create ApodModel with default values when no arguments are provided', () {
      final apod = ApodModel();

      expect(apod.date, isNotNull);
      expect(apod.explanation, isEmpty);
      expect(apod.copyright, isEmpty);
      expect(apod.hdurl, isEmpty);
      expect(apod.mediaType, isEmpty);
      expect(apod.serviceVersion, isEmpty);
      expect(apod.title, isEmpty);
      expect(apod.url, isEmpty);
    });

    test('should create ApodModel with provided values', () {
      final date = DateTime.now();
      final apod = ApodModel(
        date: date,
        explanation: 'explanation',
        copyright: 'copyright',
        hdurl: 'hdurl',
        mediaType: 'mediaType',
        serviceVersion: 'serviceVersion',
        title: 'title',
        url: 'url',
      );

      expect(apod.date, equals(date));
      expect(apod.explanation, equals('explanation'));
      expect(apod.copyright, equals('copyright'));
      expect(apod.hdurl, equals('hdurl'));
      expect(apod.mediaType, equals('mediaType'));
      expect(apod.serviceVersion, equals('serviceVersion'));
      expect(apod.title, equals('title'));
      expect(apod.url, equals('url'));
    });

    test('should convert ApodModel to JSON', () {
      final date = DateTime.now();
      final apod = ApodModel(
        date: date,
        explanation: 'explanation',
        copyright: 'copyright',
        hdurl: 'hdurl',
        mediaType: 'mediaType',
        serviceVersion: 'serviceVersion',
        title: 'title',
        url: 'url',
      );

      final json = apod.toJson();

      expect(json['date'], equals(date.toDateString()));
      expect(json['explanation'], equals('explanation'));
      expect(json['copyright'], equals('copyright'));
      expect(json['hdurl'], equals('hdurl'));
      expect(json['media_type'], equals('mediaType'));
      expect(json['service_version'], equals('serviceVersion'));
      expect(json['title'], equals('title'));
      expect(json['url'], equals('url'));
    });

    test('should create ApodModel from JSON', () {
      final date = DateTime.now();
      final json = {
        'date': date.toDateString(),
        'explanation': 'explanation',
        'copyright': 'copyright',
        'hdurl': 'hdurl',
        'media_type': 'mediaType',
        'service_version': 'serviceVersion',
        'title': 'title',
        'url': 'url',
      };

      final apod = ApodModel.fromJson(json);

      expect(apod.date.toDateString(),equals( date.toDateString()));
      expect(apod.explanation, equals('explanation'));
      expect(apod.copyright, equals('copyright'));
      expect(apod.hdurl, equals('hdurl'));
      expect(apod.mediaType, equals('mediaType'));
      expect(apod.serviceVersion, equals('serviceVersion'));
      expect(apod.title, equals('title'));
      expect(apod.url, equals('url'));
    });
  });
}