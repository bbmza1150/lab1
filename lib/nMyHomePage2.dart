import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

enum SingingCharacter { Thai, English, Chinese }

class _Home2State extends State<Home2> {
  final List<String> _choices = ['Computer Science', 'Mathematics'];
  bool isChecked = false;
  int? _selectedMajor;
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false, // ซ่อนป้าย DEBUG
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Major",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(
                _choices.length,
                (int index) {
                  return ChoiceChip(
                    label: Text(_choices[index]),
                    selected: _selectedMajor == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedMajor = selected ? index : null;
                      });
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Language",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            ListTile(
              title: const Text('Thai'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Thai,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('English'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Chinese'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Chinese,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                Text('Agree Condition Terms'),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle register button press
                    print('Register button pressed');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
