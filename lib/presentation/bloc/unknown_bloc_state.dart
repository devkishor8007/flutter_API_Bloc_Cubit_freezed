import 'package:equatable/equatable.dart';
import 'package:flux_bloc_onue/presentation/data/models/unknown_model.dart';

abstract class GetUnknownState extends Equatable {}

class LoadingUnknownState extends GetUnknownState {
  @override
  List<Object?> get props => [];
}

class LoadedUnknownState extends GetUnknownState {
  final List<Unknown> unknown;
  LoadedUnknownState({required this.unknown});

  @override
  List<Object?> get props => [this.unknown];
}

class FailedToLoadUnknownState extends GetUnknownState {
  final Exception error;
  FailedToLoadUnknownState(this.error);

  @override
  List<Object?> get props => [this.error];
}
