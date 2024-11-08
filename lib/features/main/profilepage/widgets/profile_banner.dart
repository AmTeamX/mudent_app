import 'package:flutter/material.dart';
import 'package:mudent_app/config/theme/design_system.dart';

class ProfileBanner extends StatefulWidget {
  const ProfileBanner({super.key});

  @override
  State<ProfileBanner> createState() => _ProfileBannerState();
}

class _ProfileBannerState extends State<ProfileBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.only(left: 18, right: 18, top: 24, bottom: 24),
      width: 400,
      height: 150,
      decoration: BoxDecoration(
          color: DesignSystem.primary,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 0,
                offset: const Offset(0, 5))
          ],
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: DesignSystem.g1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100))),
                  child: const CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pannawit Krutnak",
                      style: TextStyle(
                          fontSize: DesignSystem.fontSize3,
                          color: DesignSystem.g1),
                    ),
                    Text(
                      "Role : Admin",
                      style: TextStyle(
                          fontSize: DesignSystem.fontSize5,
                          color: DesignSystem.g3),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(
            Icons.edit,
            color: DesignSystem.g1,
          )
        ],
      ),
    );
  }
}
