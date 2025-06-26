import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class SearchSurahJuz extends StatelessWidget {
  const SearchSurahJuz({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        switch (state) {
          case HomeSearchedSurahJuzState(:final query):
            context.read<JuzCubit>().searchJuz(query);
            context.read<SurahCubit>().searchJuz(query);
            break;
          default:
        }
      },
      child: DefaultTextField(
        hintTextStyle: AppStyle.text(
          fontColor:
              context.isLightTheme
                  ? context.getColorExt(AppColorType.text)
                  : context.getColorExt(AppColorType.background),
        ),
        textStyle: AppStyle.text(
          fontColor:
              context.isLightTheme
                  ? context.getColorExt(AppColorType.text)
                  : context.getColorExt(AppColorType.background),
        ),
        hintText: 'Search',
        controller: homeBloc.searchController,
        onChanged: (query) => homeBloc.add(HomeEvent.searchSurahJuz(query)),
        suffix:
            homeBloc.searchController.text.isEmpty
                ? Icon(
                  Icons.search,
                  color:
                      context.isLightTheme
                          ? context.getColorExt(AppColorType.text)
                          : context.getColorExt(AppColorType.background),
                )
                : Icon(
                  Icons.clear,
                  color:
                      context.isLightTheme
                          ? context.getColorExt(AppColorType.text)
                          : context.getColorExt(AppColorType.background),
                ).onTap(() => homeBloc.add(const HomeEvent.clearSearch())),
      ),
      // builder: (context, state) {
      //   return DefaultTextField(
      //     hintTextStyle: AppStyle.text(
      //       fontColor:
      //           context.isLightTheme
      //               ? context.getColorExt(AppColorType.text)
      //               : context.getColorExt(AppColorType.background),
      //     ),
      //     textStyle: AppStyle.text(
      //       fontColor:
      //           context.isLightTheme
      //               ? context.getColorExt(AppColorType.text)
      //               : context.getColorExt(AppColorType.background),
      //     ),
      //     hintText: 'Search',
      //     controller: homeBloc.searchController,
      //     onChanged: (query) => homeBloc.add(HomeEvent.searchSurahJuz(query)),
      //     suffix:
      //         homeBloc.searchController.text.isEmpty
      //             ? Icon(
      //               Icons.search,
      //               color:
      //                   context.isLightTheme
      //                       ? context.getColorExt(AppColorType.text)
      //                       : context.getColorExt(AppColorType.background),
      //             )
      //             : Icon(
      //               Icons.clear,
      //               color:
      //                   context.isLightTheme
      //                       ? context.getColorExt(AppColorType.text)
      //                       : context.getColorExt(AppColorType.background),
      //             ).onTap(() => homeBloc.add(const HomeEvent.clearSearch())),
      //   );
      // },
    );
  }
}
