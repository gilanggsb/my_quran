import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/common.dart';
import '../../../features.dart';

@RoutePage()
class QuranDetailScreen extends StatelessWidget {
  final QuranDetailParams params;
  const QuranDetailScreen({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuranDetailCubit>(
      create: (context) => getIt.get<QuranDetailCubit>(),
      child: QuranDetailView(
        params: params,
      ),
    );
  }
}
