
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/presentation/pages/details/details_page.dart';
import 'package:apod/src/presentation/pages/home/home_page.dart';
import 'package:apod/src/presentation/pages/home/home_page_presenter.dart';
import 'package:apod/src/utils/base_mvp.dart';

mixin HomePageActions on BaseState<HomePage, HomePagePresenter> {

  Future goToDetails(ApodModel apodModel) async {
    await DetailsPage.push(context: context, apod: apodModel);
  }
}