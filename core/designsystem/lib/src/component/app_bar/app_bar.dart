import 'package:flutter/material.dart';

final class AsisAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AsisAppBar({
    super.key,
    Widget? title,
  }) : _title = title;

  final Widget? _title;

  @override
  Widget build(BuildContext context) => AppBar(
        title: _title,
        centerTitle: true,
      );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
