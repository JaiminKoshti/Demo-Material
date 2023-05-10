import 'package:first/chip/chipWidget.dart';
import 'package:flutter/material.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class FilterChipWidgets extends StatelessWidget {
  const FilterChipWidgets({Key? key}) : super(key: key);

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
                    Navigator.pop(context);
                  },
                  child: Text("Home" , style: TextStyle(color: Colors.white),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">",style: TextStyle(color: Colors.white)),
              ),
              GestureDetector(onTap: () {
                Navigator.pop(context);
              },child: Text("Chip",style: TextStyle(color: Colors.white))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">" , style: TextStyle(color: Colors.white)),
              ),
              Text("Filter Chip" ,style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: FilterChipExample(),
      ),
    );
  }
}

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("FilterChip" ,  style: TextStyle(fontWeight: FontWeight.w900)),
            ),
            Text('Choose an execise :', style: textTheme.labelLarge),
            const SizedBox(height: 5.0),
            Wrap(
              spacing: 5.0,
              children: ExerciseFilter.values.map((ExerciseFilter exercise) {
                return FilterChip(
                  label: Text(exercise.name),
                  selected: _filters.contains(exercise.name),
                  onSelected: (bool value) {
                    setState(() {
                      if (value) {
                        if (!_filters.contains(exercise.name)) {
                          _filters.add(exercise.name);
                        }
                      } else {
                        _filters.removeWhere((String name) {
                          return name == exercise.name;
                        });
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            Text('Looking for: ${_filters.join(', ')}')
          ],
        ),
      ),
    );
  }
}

