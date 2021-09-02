import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_cubit.dart';
import 'package:flux_bloc_onue/presentation/data/models/unknown_model.dart';
import 'package:flux_bloc_onue/presentation/utilities/colors.dart';

class HomePage extends StatelessWidget {
  final List color = [
    ColorApp.black,
    ColorApp.red,
    ColorApp.green,
    ColorApp.pink,
    ColorApp.amber,
    ColorApp.red,
    ColorApp.green,
    ColorApp.pink,
    ColorApp.amber,
    ColorApp.red
  ];

  @override
  Widget build(BuildContext context) {
    color.shuffle();
    return Scaffold(
        appBar: AppBar(
          title: Text("Cubit"),
        ),
        body: BlocBuilder<GetCubit, List<Unknown>>(
          builder: (context, data) {
            if (data.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: color[index],
                      ),
                    ),
                    title: Text(data[index].name),
                    subtitle: Text(data[index].color),
                  );
                });
          },
        ));
  }
}
