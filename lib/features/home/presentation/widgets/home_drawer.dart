import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/common/common.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.colorsExt.background,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: context.colorsExt.text,
            ),
            title: const DefaultText('Bookmark'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final themeCubit = context.read<ThemeCubit>();
              final isDarkTheme = themeCubit.isDarkTheme;
              return SwitchListTile(
                value: isDarkTheme,
                secondary: Icon(
                  isDarkTheme ? Icons.mode_night : Icons.light_mode,
                  color: context.colorsExt.text,
                ),
                title: const DefaultText('Theme'),
                onChanged: (data) => themeCubit.switchTheme(),
              );
            },
          ),
        ],
      ),
    );
  }
}
