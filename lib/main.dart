import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/features/counter/presentation/pages/counter_page.dart';
import 'package:my_app/features/counter/presentation/cubit/counter_cubit.dart';

import 'injector.dart';

void main() async {
  configureDependencies(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<CounterCubit>(),
      child: ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
          darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
          themeMode: context.watch<CounterCubit>().state.isDarkTheme
              ? ThemeMode.dark
              : ThemeMode.light,
          home: const CounterPage(),
        ),
      ),
    );
  }
}
