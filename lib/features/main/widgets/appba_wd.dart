// custom_app_bar.dart
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mudent_app/config/config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 20,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Iconify(
            MaterialSymbols.notifications_outline,
            color: DesignSystem.g1,
          ),
        ),
      ],
      backgroundColor: DesignSystem.primary,
      title: Image.asset(
        'assets/images/mudent_logo.png',
        fit: BoxFit.contain,
        height: 48,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
