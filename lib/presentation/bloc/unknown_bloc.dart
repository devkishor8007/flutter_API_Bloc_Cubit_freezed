import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_event.dart';
import 'package:flux_bloc_onue/presentation/bloc/unknown_bloc_state.dart';
import 'package:flux_bloc_onue/presentation/data/repositories/unkown_repo.dart';

class GetUnknownBloc extends Bloc<GetUnknownEvent, GetUnknownState> {
  final UnknownServiceImpl _unknownServiceImpl = UnknownServiceImpl();
  GetUnknownBloc() : super(LoadingUnknownState());

  @override
  Stream<GetUnknownState> mapEventToState(GetUnknownEvent event) async* {
    if (event is LoadUnknownEvent) {
      yield LoadingUnknownState();
    }
    try {
      final unknownData = await _unknownServiceImpl.getUnknown();
      yield LoadedUnknownState(unknown: unknownData);
    } on Exception catch (e) {
      yield FailedToLoadUnknownState(e);
    }
  }
}
