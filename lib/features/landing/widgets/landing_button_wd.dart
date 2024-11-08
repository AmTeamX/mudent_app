import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';

class LandingButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const LandingButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        onPressed: onPressed,
        child: SizedBox(
          width: 300,
          height: 50,
          child: Center(
              child: Text(label,
                  style: const TextStyle(fontSize: DesignSystem.fontSize0))),
        ));
  }
}
