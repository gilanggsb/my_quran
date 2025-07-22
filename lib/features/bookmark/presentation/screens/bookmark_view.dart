import 'package:flutter/material.dart';

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
