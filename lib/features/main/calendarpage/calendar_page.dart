import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';
import 'package:mudent_app/features/main/calendarpage/utils/utils.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  List<DateTime?> calendarVal = [
    DateTime.now().add(const Duration(days: 1)),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 14),
            const Row(
              children: [
                SizedBox(width: 8),
                Text(
                  CalendarPageMsg.header,
                  style: TextStyle(
                      fontSize: DesignSystem.fontSize4,
                      color: DesignSystem.primary),
                ),
              ],
            ),
            CalendarDatePicker2(
              config: CalendarDatePicker2Config(),
              value: calendarVal,
              onValueChanged: (value) => calendarVal = value,
            )
          ],
        ),
      ),
    );
  }
}
