import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

const bodyTab = [SurahRoute(), JuzRoute()];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void openDrawer() => Scaffold.of(globalContext).openDrawer();

  void init(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.getData());
    context.read<SurahCubit>().getData();
    context.read<JuzCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    globalContext = context;
    return DefaultScaffold(
      appBar: DefaultAppBar(
        title: 'Al Quran',
        leading: IconButton(
          onPressed: openDrawer,
          icon: Icon(Icons.menu, color: context.getColorExt(AppColorType.text)),
        ),
      ),
      onInit: () => init(context),
      drawer: const HomeDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const LastReadSurahBanner(),
          12.heightBox,
          const SearchSurahJuz(),
          24.heightBox,
          Expanded(
            child: AutoTabsRouter.tabBar(
              routes: bodyTab,
              homeIndex: 0,
              builder: (context, child, pageController) {
                globalContext = context;
                final tabsRouter = AutoTabsRouter.of(context);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40.sp,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: bodyTab.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final currentTab = bodyTab[index];
                          final isActive = pageController.index == index;
                          return TabContainer(
                            tabName: currentTab.routeName.replaceAll('Route', ''),
                            isActive: isActive,
                            onTap: () => tabsRouter.setActiveIndex(index),
                          );
                        },
                      ),
                    ),
                    Expanded(child: child),
                  ],
                );
              },
            ),
          ),
        ],
      ).paddingAll(16),
    );
  }
}
