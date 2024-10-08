import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(home: AttendanceTracker()));
}

class AttendanceTracker extends StatefulWidget {
  @override
  _AttendanceTrackerState createState() => _AttendanceTrackerState();
}

class _AttendanceTrackerState extends State<AttendanceTracker> {
  late DateTime _currentWeekStart;
  Map<DateTime, List<WorkEntry>> workEntries = {};

  @override
  void initState() {
    super.initState();
    _currentWeekStart = _getWeekStart(DateTime.now());
    _initializeDummyData();
  }

  void _initializeDummyData() {
    // Simulating some sample data
    for (int i = 0; i < 5; i++) {
      DateTime day = _currentWeekStart.add(Duration(days: i));
      workEntries[day] = [
        WorkEntry("Design", Duration(hours: 8)),
      ];
    }
  }

  DateTime _getWeekStart(DateTime date) {
    return date.subtract(Duration(days: date.weekday - 1));
  }

  void _navigateWeek(int direction) {
    setState(() {
      _currentWeekStart = _currentWeekStart.add(Duration(days: 7 * direction));
    });
  }

  double _getTotalHours() {
    double total = 0;
    workEntries.forEach((date, entries) {
      for (var entry in entries) {
        total += entry.duration.inHours;
      }
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          _buildWeekNavigator(),
          Expanded(
            child: _buildWeekView(),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekNavigator() {
    String weekText = DateFormat('MMM d').format(_currentWeekStart) +
        ' - ' +
        DateFormat('MMM d').format(_currentWeekStart.add(Duration(days: 6)));

    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () => _navigateWeek(-1),
          ),
          Column(
            children: [
              Text(weekText, style: TextStyle(fontSize: 18)),
              Text('Total hours: ${_getTotalHours().toStringAsFixed(2)} hrs'),
            ],
          ),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: () => _navigateWeek(1),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekView() {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        DateTime day = _currentWeekStart.add(Duration(days: index));
        return _buildDayCard(day);
      },
    );
  }

  Widget _buildDayCard(DateTime date) {
    List<WorkEntry> entries = workEntries[date] ?? [];
    double totalHours =
        entries.fold(0, (sum, entry) => sum + entry.duration.inHours);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('d MMMM, EEEE').format(date),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${totalHours.toStringAsFixed(2)} hrs'),
              ],
            ),
            SizedBox(height: 8),
            ...entries.map((entry) => _buildEntryItem(entry)).toList(),
            TextButton(
              onPressed: () {
                // Add new entry logic here
              },
              child: Text('+ Add Entry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEntryItem(WorkEntry entry) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(entry.projectName),
          Text(
              '${entry.duration.inHours}:${entry.duration.inMinutes % 60} hrs'),
        ],
      ),
    );
  }
}

class WorkEntry {
  final String projectName;
  final Duration duration;

  WorkEntry(this.projectName, this.duration);
}
