import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_state.dart';
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
          title: Text("Bloc"),
        ),
        body: BlocBuilder<GetUnknownBloc, GetUnknownState>(
          builder: (context, state) {
            if (state is LoadingUnknownState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoadedUnknownState) {
              return ListView.builder(
                  itemCount: state.unknown.length,
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
                      title: Text(state.unknown[index].name),
                      subtitle: Text(state.unknown[index].color),
                    );
                  });
            } else if (state is FailedToLoadUnknownState) {
              print(state.error);
              return Center(
                child: Text("Error Occured"),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
