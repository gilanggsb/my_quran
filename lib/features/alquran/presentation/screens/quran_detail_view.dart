import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/common.dart';
import '../../../features.dart';

class QuranDetailView extends StatelessWidget {
  final QuranDetailParams params;
  const QuranDetailView({super.key, required this.params});

  void openDrawer() => Scaffold.of(globalContext).openDrawer();

  @override
  Widget build(BuildContext context) {
    globalContext = context;
    return DefaultScaffold(
      appBar: DefaultAppBar(
        title: 'Detail',
        leading: IconButton(
          onPressed: openDrawer,
          icon: Icon(
            Icons.menu,
            color: context.colorsExt.text,
          ),
        ),
      ),
      onInit: () {
        context.read<QuranDetailCubit>().getData(params);
      },
      body: const Column(
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
