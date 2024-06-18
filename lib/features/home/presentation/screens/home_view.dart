import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

const bodyTab = [
  SurahRoute(),
  JuzRoute(),
];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void openDrawer() => Scaffold.of(globalContext).openDrawer();

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBar: DefaultAppBar(
        title: 'Al Quran',
        leading: IconButton(
          onPressed: openDrawer,
          icon: Icon(
            Icons.menu,
            color: context.colorsExt.text,
          ),
        ),
      ),
      drawer: const HomeDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const LastReadSurahBanner(),
          24.heightBox,
          Expanded(
            child: AutoTabsRouter(
              routes: bodyTab,
              transitionBuilder: (context, child, animation) {
                final double resDx =
                    globalContext.tabsRouter.isRouteActive(JuzRoute.name)
                        ? 1
                        : -1;
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(
                      resDx,
                      0,
                    ),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              builder: (context, child) {
                globalContext = context;
                final tabsRouter = AutoTabsRouter.of(context);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35.sp,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: bodyTab.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final currentTab = bodyTab[index];
                          return TabContainer(
                            tabName:
                                currentTab.routeName.replaceAll('Route', ''),
                            isActive:
                                tabsRouter.isRouteActive(currentTab.routeName),
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
      ),
    );
  }
}
