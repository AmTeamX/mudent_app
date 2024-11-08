import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';
import 'package:mudent_app/features/main/profilepage/widgets/setting_item.dart';

import './widgets/widgets.dart';
import 'utils/utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 14),
          const Row(
            children: [
              SizedBox(width: 8),
              Text(
                ProfilePageMsg.header,
                style: TextStyle(
                    fontSize: DesignSystem.fontSize4,
                    color: DesignSystem.primary),
              ),
            ],
          ),
          const ProfileBanner(),
          Container(
            margin: const EdgeInsets.all(14),
            width: 400,
            decoration: BoxDecoration(
                color: DesignSystem.g1,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 5))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(7))),
            child: const Center(
              child: Column(
                children: [
                  SettingItem(
                    icon: Icons.help,
                    headTxt: ProfilePageMsg.setting1,
                  ),
                  SettingItem(
                    icon: Icons.logout,
                    headTxt: ProfilePageMsg.logout,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
