import 'package:core_bloc/bloc.dart';
import 'package:core_flutter_bloc/src/internal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlowBlocListener<BlocT extends BlocBase<FlowState<DataT>>, DataT>
    extends BlocListener<BlocT, FlowState<DataT>> {
  const FlowBlocListener({
    required BlocWidgetListener<FlowState<DataT>> listener,
    super.key,
    super.bloc,
    BlocListenerCondition<FlowState<DataT>>? listenWhen,
    super.child,
  }) : super(listener: listener, listenWhen: listenWhen);

  factory FlowBlocListener.when({
    Key? key,
    BlocT? bloc,
    BlocWidgetListener<IdleState<DataT>>? onIdle,
    BlocWidgetListener<LoadingState<DataT>>? onLoading,
    BlocWidgetListener<LoadMoreState<DataT>>? onLoadMore,
    BlocWidgetListener<EmptyState<DataT>>? onEmpty,
    BlocWidgetListener<DataState<DataT>>? onData,
    BlocWidgetListener<ErrorState<DataT>>? onError,
    BlocWidgetListener<FlowState<DataT>>? onElse,
    BlocListenerCondition<FlowState<DataT>>? listenWhen,
  }) {
    return FlowBlocListener<BlocT, DataT>(
      key: key,
      bloc: bloc,
      listener: InteralFlowBlocListener.when(
        onIdle: onIdle,
        onLoading: onLoading,
        onLoadMore: onLoadMore,
        onEmpty: onEmpty,
        onData: onData,
        onError: onError,
        onElse: onElse,
      ),
      listenWhen: listenWhen,
    );
  }
}
