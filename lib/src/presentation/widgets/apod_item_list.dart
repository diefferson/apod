import 'package:apod/res/app_strings.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:flutter/material.dart';

class ApodItemList extends StatelessWidget {
  const ApodItemList({super.key, required this.item});

  final ApodModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
        ),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(context),
          _image(),
          _details(context),
        ],
      ),
    );
  }

  Widget _image() {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 200,
      ),
      child: Image.network(
        item.url,
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _details(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.explanation,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              item.url,
              width: 40, // define the width of the image
              height: 40, // define the height of the image
              fit: BoxFit.cover, // use this to prevent image distortion
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              item.title,
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            AppStrings.of(context).formattedDate(item.date),
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
