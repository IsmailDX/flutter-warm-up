import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? menuItem = 'element1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton(
              value: menuItem,
              items: [
                DropdownMenuItem(value: 'element1', child: Text('Element 1')),
                DropdownMenuItem(value: 'element2', child: Text('Element 2')),
                DropdownMenuItem(value: 'element3', child: Text('Element 3')),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),

            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: controller,
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Click me'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            Switch.adaptive(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            SwitchListTile(
              title: const Text('Click me'),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            Slider(
              value: sliderValue,
              max: 100,
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                  print(sliderValue);
                });
              },
            ),

            InkWell(
              splashColor: Colors.tealAccent,
              onTap: () {
                print('Image tapped');
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white12,
              ),
            ),

            ElevatedButton(
              child: Text('Click me'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
            ),

            ElevatedButton(child: Text('Click me'), onPressed: () {}),

            FilledButton(child: Text('Click me'), onPressed: () {}),

            TextButton(child: Text('Click me'), onPressed: () {}),

            OutlinedButton(child: Text('Click me'), onPressed: () {}),

            CloseButton(onPressed: () {}),

            BackButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
