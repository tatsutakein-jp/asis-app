import 'package:flutter/material.dart';

final class AsisAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AsisAppBar({
    super.key,
    Widget? title,
    List<Widget>? actions,
  })  : _title = title,
        _actions = actions;

  final Widget? _title;
  final List<Widget>? _actions;

  @override
  Widget build(BuildContext context) => AppBar(
        title: _title,
        centerTitle: true,
        actions: _actions,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
