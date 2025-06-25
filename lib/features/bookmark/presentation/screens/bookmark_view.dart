import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class BookmarkView extends StatelessWidget {
  BookmarkView({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      onDispose: () => controller.dispose(),
      appBar: DefaultAppBar(
        title: 'Bookmark',
        leading: IconButton(
          onPressed: context.back,
          icon: Icon(Icons.chevron_left, color: context.getColorExt(AppColorType.text), size: 32),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: true,
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 110.sp,
            title: const BookmarkCategoryTitle(),
            centerTitle: false,
            flexibleSpace: const FlexibleSpaceBar(background: BookmarkCategoryFilter()),
          ),
          const SliverToBoxAdapter(child: BookmarkListView()),
        ],
      ).paddingSymmetric(vertical: 16),
    );
  }
}
