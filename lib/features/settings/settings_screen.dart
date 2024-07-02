import 'package:booky/common/app_colors.dart/app_colors.dart';
import 'package:booky/common/app_styles.dart';
import 'package:booky/common/utils.dart';
import 'package:booky/common/widgets/common_app_bar.dart';
import 'package:booky/common/widgets/common_drawer.dart';
import 'package:booky/local_storage/local_storage_keys.dart';
import 'package:booky/proto/generated/booky.pbenum.dart';
import 'package:flutter/material.dart';

import '../../local_storage/local_storage.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late String program;
  late int year;
  late Track track;

  @override
  void initState() {
    super.initState();

    program = LocalStorage().get(LocalStorageKeys.program) ?? 'BS';
    year = int.parse(LocalStorage().get(LocalStorageKeys.year) ?? '1');
    track = stringToTrack(LocalStorage().get(LocalStorageKeys.track)) ?? Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        appBar: CommonAppBar(
          title: 'Settings',
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              color: AppColors.titleColor,
            );
          }),
        ),
        drawer: buildDrawer(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Education program',
                    style: AppStyles.settingsTitle,
                  ),
                  DropDownButtonDecoration(
                    child: DropdownButton(
                      underline: const SizedBox(),
                      borderRadius: BorderRadius.circular(15),
                      dropdownColor: AppColors.mainBackgroundColor,
                      iconSize: 40,
                      style: AppStyles.settingsTitle.copyWith(fontSize: 18),
                      value: program,
                      items: const [
                        DropdownMenuItem(
                          value: 'BS',
                          child: Text('BS'),
                        ),
                        DropdownMenuItem(
                          value: 'MS',
                          child: Text('MS'),
                        ),
                        DropdownMenuItem(
                          value: 'PhD',
                          child: Text('PhD'),
                        ),
                      ],
                      onChanged: (value) async {
                        if (value != null) {
                          setState(() {
                            year = 1;
                            program = value.toString();
                          });
                          await LocalStorage().update(
                            key: LocalStorageKeys.program,
                            value: program,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Education year',
                    style: AppStyles.settingsTitle,
                  ),
                  DropDownButtonDecoration(
                    child: DropdownButton<int>(
                      underline: const SizedBox(),
                      borderRadius: BorderRadius.circular(15),
                      dropdownColor: AppColors.mainBackgroundColor,
                      iconSize: 40,
                      style: AppStyles.settingsTitle.copyWith(fontSize: 18),
                      value: year,
                      items: yearValues(),
                      onChanged: (value) async {
                        if (value != null) {
                          setState(() {
                            year = value;
                          });
                          await LocalStorage().update(
                            key: LocalStorageKeys.year,
                            value: value.toString(),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Education track',
                    style: AppStyles.settingsTitle,
                  ),
                  DropDownButtonDecoration(
                    child: DropdownButton<Track>(
                      underline: const SizedBox(),
                      borderRadius: BorderRadius.circular(15),
                      dropdownColor: AppColors.mainBackgroundColor,
                      iconSize: 40,
                      style: AppStyles.settingsTitle.copyWith(fontSize: 18),
                      value: track,
                      items: trackValues(),
                      onChanged: (value) async {
                        if (value != null) {
                          setState(() {
                            track = value;
                          });
                        }
                        await LocalStorage().update(
                          key: LocalStorageKeys.track,
                          value: trackToString(track),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<Track>> trackValues() {
    final List<Track> tracs = [
      Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE,
      Track.TRACK_DATA_SCIENCE,
      Track.TRACK_SOFTWARE_DEVELOPMENT,
      Track.TRACK_GAME_DEVELOPMENT,
      Track.TRACK_ROBOTICS,
      Track.TRACK_DATA_SCIENCE,
    ];

    List<DropdownMenuItem<Track>> items = [];
    for (Track track in tracs) {
      items.add(DropdownMenuItem<Track>(
        value: track,
        child: Text(trackToString(track)),
      ));
    }
    return items;
  }

  List<DropdownMenuItem<int>> yearValues() {
    late final int maxYear;

    switch (program) {
      case 'BS':
        maxYear = 4;
        break;
      case 'MS':
        maxYear = 2;
        break;
      case 'PhD':
        maxYear = 1;
        break;
      default:
        maxYear = 4;
        break;
    }

    List<DropdownMenuItem<int>> items = [];
    for (int i = 1; i <= maxYear; i++) {
      items.add(DropdownMenuItem<int>(
        value: i,
        child: Text('$i'),
      ));
    }
    return items;
  }
}

class DropDownButtonDecoration extends StatelessWidget {
  final DropdownButton child;

  const DropDownButtonDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 114,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
        border: Border.all(
          color: AppColors.inactiveTitleColor,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          child,
        ],
      ),
    );
  }
}
