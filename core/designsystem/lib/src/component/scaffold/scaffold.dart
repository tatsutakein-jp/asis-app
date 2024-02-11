import 'package:flutter/material.dart';

final class AsisScaffold extends StatelessWidget {
  const AsisScaffold({
    super.key,
    PreferredSizeWidget? appBar,
    Widget? body,
  })  : _appBar = appBar,
        _body = body;

  final PreferredSizeWidget? _appBar;
  final Widget? _body;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar,
        body: _body,
      );
}
