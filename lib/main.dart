import 'package:baqa3/layout/cubit/cubit.dart';
import 'package:baqa3/modules/splash/splash_screen.dart';
import 'package:baqa3/shared/bloc_observer.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:baqa3/shared/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configurationApplication();
  BlocOverrides.runZoned(
    () {
      Baqa3Cubit();
    },
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Baqa3Cubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'بقاع',
        theme: lightTheme,
        themeMode: ThemeMode.light,
        home: const SplashScreen(),
      ),
    );
  }
}
