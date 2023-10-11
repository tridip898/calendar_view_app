import 'package:calendar_view/calendar_view.dart';
import 'package:calendar_view_project/event.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController()..addAll(events),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: DayView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<CalendarEventData<Event>> events = [
  CalendarEventData(
    date: DateTime.now(),
    event: const Event(title: "Joe's Birthday"),
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 18, 30),
    endTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 22),
  ),
  CalendarEventData(
    date: DateTime.now().add(const Duration(days: 1)),
    startTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 18),
    endTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 19),
    event: const Event(title: "Wedding anniversary"),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: DateTime.now(),
    startTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 14),
    endTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 17),
    event: const Event(title: "Football Tournament"),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: DateTime.now().add(const Duration(days: 3)),
    startTime: DateTime(DateTime.now().add(const Duration(days: 3)).year,
        DateTime.now().add(const Duration(days: 3)).month, DateTime.now().add(Duration(days: 3)).day, 10),
    endTime: DateTime(DateTime.now().add(const Duration(days: 3)).year,
        DateTime.now().add(const Duration(days: 3)).month, DateTime.now().add(Duration(days: 3)).day, 14),
    event: const Event(title: "Sprint Meeting."),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: DateTime.now().subtract(const Duration(days: 2)),
    startTime: DateTime(
        DateTime.now().subtract(const Duration(days: 2)).year,
        DateTime.now().subtract(const Duration(days: 2)).month,
        DateTime.now().subtract(const Duration(days: 2)).day,
        14),
    endTime: DateTime(
        DateTime.now().subtract(Duration(days: 2)).year,
        DateTime.now().subtract(Duration(days: 2)).month,
        DateTime.now().subtract(Duration(days: 2)).day,
        16),
    event: Event(title: "Team Meeting"),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: DateTime.now().subtract(Duration(days: 2)),
    startTime: DateTime(
        DateTime.now().subtract(Duration(days: 2)).year,
        DateTime.now().subtract(Duration(days: 2)).month,
        DateTime.now().subtract(Duration(days: 2)).day,
        10),
    endTime: DateTime(
        DateTime.now().subtract(Duration(days: 2)).year,
        DateTime.now().subtract(Duration(days: 2)).month,
        DateTime.now().subtract(Duration(days: 2)).day,
        12),
    event: Event(title: "Chemistry Viva"),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
];
