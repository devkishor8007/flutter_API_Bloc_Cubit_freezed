import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_cubit.dart';
import 'package:flux_bloc_onue/presentation/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<GetCubit>(
        create: (context) => GetCubit()..getDataCubit(),
        child: HomePage(),
      ),
    );
  }
}
