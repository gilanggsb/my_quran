import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.getColorExt(AppColorType.background),
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: Icon(Icons.bookmark, color: context.getColorExt(AppColorType.text)),
            title: const DefaultText('Bookmark'),
            onTap: () {
              Scaffold.of(context).closeDrawer();
              context.pushRoute(const BookmarkRoute());
            },
          ),
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final themeCubit = context.read<ThemeCubit>();
              final isDarkTheme = themeCubit.isDarkTheme;
              return SwitchListTile(
                value: isDarkTheme,
                trackColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return context.getColorExt(AppColorType.primary);
                  }
                  return null;
                }),
                trackOutlineColor: WidgetStateProperty.resolveWith((states) {
                  if (!states.contains(WidgetState.selected)) {
                    return context.getColorExt(AppColorType.primary);
                  }
                  return null;
                }),
                activeColor: context.getColorExt(AppColorType.background),
                secondary: Icon(
                  isDarkTheme ? Icons.mode_night : Icons.light_mode,
                  color: context.getColorExt(AppColorType.text),
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
