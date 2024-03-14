import 'package:apod/res/app_strings.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/presentation/widgets/apod_scaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage(this.apod, {super.key});

  final ApodModel apod;

  static Future push({required BuildContext context, required ApodModel apod}) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPage(apod),
      ),
    );
  }

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ApodScaffold(
      title: AppStrings.of(context).details,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              AppStrings.of(context).title,
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.apod.title,
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 200,
              ),
              child: Hero(
                tag: widget.apod.url,
                child: CachedNetworkImage(
                  imageUrl: widget.apod.hdurl,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Text(AppStrings.of(context)
                .copyrightOf(widget.apod.copyright, widget.apod.date)),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.of(context).details,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.apod.explanation,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
