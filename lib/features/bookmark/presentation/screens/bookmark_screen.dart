import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

@RoutePage()
class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<BookmarkBloc>()),
        BlocProvider(create: (_) => getIt.get<BookmarkCategoryCubit>()..getData()),
      ],
      child: BookmarkView(),
    );
  }
}
