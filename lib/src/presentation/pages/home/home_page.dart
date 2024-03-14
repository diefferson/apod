import 'package:apod/res/app_strings.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/presentation/widgets/apod_item_list.dart';
import 'package:apod/src/presentation/widgets/apod_scaffold.dart';
import 'package:apod/src/utils/base_mvp.dart';
import 'package:flutter/material.dart';
import 'home_page_presenter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomePagePresenter> {
  @override
  Widget build(BuildContext context) {
    return ApodScaffold(
      title: AppStrings.of(context).appName,
      onRefresh: presenter.refresh,
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return StreamBuilder<List<ApodModel>>(
      stream: presenter.items,
      builder: (context, snapshot) {
        final items = snapshot.data ?? [];
        return ListView.builder(
          itemCount: items.length,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemBuilder: (context, index) {
            return ApodItemList(item: items[index]);
          },
        );
      },
    );
  }
}
