import 'package:flutter/material.dart';

import '../../../../config/theme/theme.dart';

class SettingItem extends StatefulWidget {
  final IconData icon;
  final String headTxt;

  const SettingItem({super.key, required this.icon, required this.headTxt});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: Icon(
                  widget.icon,
                  color: DesignSystem.primary,
                ),
              ),
              const SizedBox(width: 14),
              Text(
                widget.headTxt,
                style: const TextStyle(fontSize: DesignSystem.fontSize3),
              )
            ],
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
