
import 'package:apod/src/presentation/pages/details/details_page.dart';
import 'package:apod/src/presentation/pages/home/home_page_actions.dart';
import 'package:apod/src/presentation/pages/home/home_page_presenter.dart';
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<HomePagePresenter>(),
  MockSpec<HomePageActions>(),
  MockSpec<DetailsPage>(),
  MockSpec<NavigatorObserver>(),
],)
void main() {}