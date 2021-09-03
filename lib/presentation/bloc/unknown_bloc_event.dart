import 'package:equatable/equatable.dart';

abstract class GetUnknownEvent extends Equatable {}

class LoadUnknownEvent extends GetUnknownEvent {
  @override
  List<Object?> get props => [];
}
