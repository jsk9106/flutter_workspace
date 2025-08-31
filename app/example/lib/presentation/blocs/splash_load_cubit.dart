import 'package:core_bloc/bloc.dart';
import 'package:core_util/util.dart';

@injectable
class SplashLoadCubit extends FlowCubit<bool> {
  SplashLoadCubit() : super(const DataState<bool>(data: false));

  void load() {
    emitData(true);
  }
}
