import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:apod/src/presentation/widgets/apod_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

void main() {
  group('ApodScaffold', () {
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

    testWidgets('ApodScaffold widget test title should be displayed',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ApodScaffold(
          body: Container(),
          title: 'Test Title',
        ),
      ));

      expect(find.byType(ApodScaffold), findsOneWidget);

      expect(find.text('Test Title'), findsOneWidget);

      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('ApodScaffold widget test error snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ApodScaffold(
          body: Container(),
        ),
      ));

      await tester.pumpAndSettle();
      ErrorService.show(message: 'Test Error');

      await tester.pumpAndSettle();

      expect(find.text('Test Error'), findsOneWidget);
    });

    testWidgets('ApodScaffold widget test loading',
        (WidgetTester tester) async {
      LoadingService.showLoading();

      await tester.pumpWidget(MaterialApp(
        home: ApodScaffold(
          body: Container(
            height: 500,
          ),
        ),
      ));

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      LoadingService.dismissLoading();

      await tester.pump(Duration(seconds: 1));

      expect(find.byType(CircularProgressIndicator), findsNothing);
    });
  });
}
