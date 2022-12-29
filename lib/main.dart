import 'package:dar24/src/data/bloc/my_navi_bloc.dart';
import 'package:dar24/src/pages/my_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MultiBlocProvider(providers: [
  BlocProvider(create: (_) =>
   MyNaviBloc()..add(InitialEvent())
   )
], child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
