import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String value = 'en';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppBar(title: 'Settings'),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose your language',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20.0,
                    ),
              ),
              DropdownButton(
                dropdownColor: Colors.white,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 16.0),
                value: value,
                items: const [
                  DropdownMenuItem(
                    value: 'ru',
                    child: Text('Russian'),
                  ),
                  DropdownMenuItem(
                    value: 'en',
                    child: Text('English'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    this.value = value.toString();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
