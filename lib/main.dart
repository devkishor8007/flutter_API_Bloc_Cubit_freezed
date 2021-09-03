import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_event.dart';
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
      home: BlocProvider<GetUnknownBloc>(
        create: (context) => GetUnknownBloc()..add(LoadUnknownEvent()),
        child: HomePage(),
      ),
    );
  }
}
