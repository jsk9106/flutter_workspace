import 'package:bloc/bloc.dart';
import 'package:core_bloc/src/state.dart';

abstract class FlowCubit<DataT> extends Cubit<FlowState<DataT>>
    with FlowCubitMixin<DataT> {
  FlowCubit([FlowState<DataT>? state]) : super(state ?? IdleState<DataT>());
}

mixin FlowCubitMixin<DataT> on Cubit<FlowState<DataT>> {
  void emitIdle() {
    _emit(IdleState<DataT>(data: state.data));
  }

  void emitLoading() {
    _emit(LoadingState<DataT>(data: state.data));
  }

  void emitLoadMore() {
    _emit(LoadMoreState<DataT>(data: state.data));
  }

  void emitEmpty() {
    _emit(EmptyState<DataT>(data: state.data));
  }

  void emitData(DataT data) {
    _emit(DataState<DataT>(data: data, updatedAt: DateTime.now()));
  }

  void emitError([dynamic error, StackTrace? stackTrace]) {
    _emit(
      ErrorState<DataT>(data: state.data, error: error, stackTrace: stackTrace),
    );
  }

  void _emit(FlowState<DataT> state) {
    if (isClosed) return;
    emit(state);
  }
}
