import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:apod/src/presentation/pages/details/details_page.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

void main() {
  group('DetailsPage', () {
    setUp(() {
      Stark.clear();
      Stark.init(
        [
          {
            single<ErrorService>((i) => ErrorService()),
            single<LoadingService>((i) => LoadingService()),
          },
        ],
        logger: Logger(level: Level.NONE),
      );
    });

    testWidgets('DetailsPage widget test', (WidgetTester tester) async {
      final apod = ApodModel(
        url: 'test_url',
        hdurl: 'test_hdurl',
        title: 'test_title',
        explanation: 'test_explanation',
        copyright: 'test_copyright',
        date: DateTime(2022, 01, 01),
      );

      await tester.pumpWidget(MaterialApp(home: DetailsPage(apod)));

      expect(find.text('Title:'), findsOneWidget);
      expect(find.text('test_title'), findsOneWidget);
      expect(find.text('Copyright © 2022 - test_copyright'), findsOneWidget);
      expect(find.text('Details'), findsNWidgets(2)); // AppBar title and Details title
      expect(find.text('test_explanation'), findsOneWidget);


      final imageWidget = find.byType(CachedNetworkImage);
      expect(imageWidget, findsOneWidget);
      final CachedNetworkImage image = tester.widget(imageWidget);
      expect(image.imageUrl, equals('test_hdurl'));
    });
  });
}
