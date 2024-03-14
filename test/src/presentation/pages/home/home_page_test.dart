import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/presentation/widgets/apod_item_list.dart';
import 'package:apod/src/presentation/widgets/apod_scaffold.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:apod/src/presentation/pages/home/home_page.dart';
import 'package:apod/src/presentation/pages/home/home_page_presenter.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

import '../../../mocks/domain_mocks.mocks.dart';
import '../../../mocks/presentation_mocks.mocks.dart';

void main() {
  group('HomePage', () {
    final presenter = MockHomePagePresenter();
    setUp(() {
      Stark.clear();
      Stark.init(
        [
          {
            single<HomePagePresenter>((i) => presenter),
            single<ErrorService>((i) => MockErrorService()),
            single<LoadingService>((i) => MockLoadingService()),
          },
        ],
        logger: Logger(level: Level.NONE),
      );
    });

    testWidgets('HomePage refresh test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      when(presenter.refresh()).thenAnswer((_) => Future.value());

      final finder = find.byType(ApodScaffold);
      final apodScaffold = tester.widget<ApodScaffold>(finder);
      await apodScaffold.onRefresh!();

      verify(presenter.refresh()).called(1);
    });

    testWidgets('HomePage loadMore test', (WidgetTester tester) async {
      when(presenter.items).thenAnswer(
        (_) => Stream.value(
          List.generate(
            4,
            (index) => ApodModel(
              date: DateTime(2022, 01, 01),
              explanation: 'Test explanation',
              mediaType: 'image',
              title: 'Test title',
              url: 'https://test.com',
            ),
          ),
        ),
      );

      when(presenter.loadMore()).thenAnswer((_) => Future.value());

      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      await tester.pumpAndSettle();

      final finder = find.byType(ListView);
      await tester.drag(finder, const Offset(0, -500));
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pump();

      verify(presenter.loadMore()).called(1);
    });

    testWidgets('HomePage item click test', (WidgetTester tester) async {
      when(presenter.items).thenAnswer(
        (_) => Stream.value(
          List.generate(
            1,
            (index) => ApodModel(
              date: DateTime(2022, 01, 01),
              explanation: 'Test explanation',
              mediaType: 'image',
              title: 'Test title',
              url: 'https://test.com',
            ),
          ),
        ),
      );

      final navigatorObserver = MockNavigatorObserver();

      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [navigatorObserver],
      ));
      await tester.pump();
      final finder = find.byType(ApodItemList);
      await tester.tap(finder);
      await tester.pump();

      verify(navigatorObserver.didPush(any, any));
    });
  });
}
