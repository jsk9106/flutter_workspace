import 'package:core_bloc/bloc.dart';
import 'package:core_util/util.dart';

@lazySingleton
class BottomNavCubit extends FlowCubit<int> {
  BottomNavCubit() : super(const DataState<int>(data: 0));

  void change(int index) {
    if (state.data == index) return;
    emitData(index);
  }
}
