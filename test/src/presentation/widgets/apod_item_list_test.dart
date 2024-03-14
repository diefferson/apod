import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/presentation/widgets/apod_item_list.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final testApod = ApodModel(
    date: DateTime.now(),
    explanation: 'Test explanation',
    hdurl: 'https://test.com/hdurl',
    url: 'https://test.com/url',
    title: 'Test title',
    copyright: 'Test copyright',
  );

  testWidgets('ApodItemList displays the correct data',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ApodItemList(
        item: testApod,
        onTap: () {},
      ),
    ));

    expect(find.text('Test copyright'), findsOneWidget);
    expect(find.text('Test explanation'), findsOneWidget);
  });

  testWidgets('ApodItemList calls onTap when tapped',
      (WidgetTester tester) async {
    var tapped = false;

    await tester.pumpWidget(MaterialApp(
      home: ApodItemList(
        item: testApod,
        onTap: () {
          tapped = true;
        },
      ),
    ));

    await tester.tap(find.byType(ApodItemList));
    await tester.pump();

    expect(tapped, isTrue);
  });

  testWidgets('ApodItemList displays the correct images',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ApodItemList(
        item: testApod,
        onTap: () {},
      ),
    ));

    final imageWidgets =
        tester.widgetList<CachedNetworkImage>(find.byType(CachedNetworkImage));
    expect(imageWidgets.first.imageUrl, 'https://test.com/url');
    expect(imageWidgets.last.imageUrl, 'https://test.com/hdurl');
  });
}
