import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_bloc_onue/presentation/data/models/unknown_model.dart';
import 'package:flux_bloc_onue/presentation/data/repositories/unkown_repo.dart';

class GetCubit extends Cubit<List<Unknown>> {
  final serviceImpl = UnknownServiceImpl();
  GetCubit() : super([]);

  void getDataCubit() async => emit(await serviceImpl.getUnknown());
}
