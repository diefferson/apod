import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stark/stark.dart';

class ApodScaffold extends StatefulWidget {
  const ApodScaffold({
    super.key,
    required this.body,
    this.title,
  });

  final Widget body;
  final String? title;

  @override
  State<ApodScaffold> createState() => _ApodScaffoldState();
}

class _ApodScaffoldState extends State<ApodScaffold> {
  final ErrorService _errorService = Stark.get();
  final LoadingService _loadingService = Stark.get();
  final GlobalKey _contentKey = LabeledGlobalKey(UniqueKey().toString());
  final _contentHeight = BehaviorSubject<double?>();

  void _initContentHeight() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _contentHeight.add(
        (_contentKey.currentContext?.findRenderObject() as RenderBox?)
            ?.size
            .height,
      );
    });
  }

  void _listenErrors() {
    _errorService.error.listen((event) {
      if (event != null && mounted) {
        try {
          FocusScope.of(context).unfocus();
        } catch (_) {}
        _showError(event.message);
      }
    });
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initContentHeight();
    _listenErrors();
  }

  @override
  void dispose() {
    _contentHeight.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: StreamBuilder<bool>(
        initialData: false,
        stream: _loadingService.loading,
        builder: (context, snapshotLoading) {
          return Stack(
            key: _contentKey,
            fit: StackFit.passthrough,
            children: [
              _scaffold(),
              _buildLoading(snapshotLoading),
            ],
          );
        },
      ),
    );
  }

  Scaffold _scaffold() {
    return Scaffold(
      appBar: widget.title != null
          ? AppBar(
              title: Text(widget.title ?? ''),
            )
          : null,
      body: widget.body,
    );
  }

  Widget _buildLoading(AsyncSnapshot<bool> snapshotLoading) {
    return Visibility(
        visible: snapshotLoading.hasData && (snapshotLoading.data ?? false),
        child:
            // StreamBuilder<double?>(
            //   stream: _contentHeight,
            //   builder: (context, snapshot) {
            //     return
            Container(
          // height: snapshot.data ?? 0,
          color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        )
        // ;
        //     },
        //   ),
        );
  }
}
