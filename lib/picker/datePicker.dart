import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">", style: TextStyle(color: Colors.white)),
              ),
              Text("Date Picker", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 50, width: double.infinity, child: DatePick()),
            SizedBox(
              height: 20,
            ),
            Container(height: 150, width: 500, child: DateRangePicker()),
          ],
        )),
      ),
    );
  }
}

class DatePick extends StatefulWidget {
  const DatePick({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<DatePick> createState() => _DatePick();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePick extends State<DatePick> with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _restorableDatePickerRouteFuture.present();
          },
          child: const Text('Open Date Picker'),
        ),
      ),
    );
  }
}

class DateRangePicker extends StatefulWidget {
  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime(2001, 01, 01), end: DateTime(2024, 01, 01));

  @override
  Widget build(BuildContext context) {
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;
    final diffrence = dateTimeRange.duration;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data Range Picker :"),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: pickDateRange,
                        child:
                            Text("${start.day}/${start.month}/${start.year}"))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: pickDateRange,
                      child: Text("${end.day}/${end.month}/${end.year}")),
                )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Difference :${diffrence.inDays} Days")
          ],
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateTimeRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateTimeRange,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (newDateTimeRange == null) return;

    setState(() => dateTimeRange = newDateTimeRange);
  }
}
