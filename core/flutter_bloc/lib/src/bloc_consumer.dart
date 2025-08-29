import 'package:core_bloc/bloc.dart';
import 'package:core_flutter_bloc/src/internal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlowBlocConsumer<BlocT extends BlocBase<FlowState<DataT>>, DataT>
    extends BlocConsumer<BlocT, FlowState<DataT>> {
  const FlowBlocConsumer({
    required BlocWidgetBuilder<FlowState<DataT>> builder,
    required BlocWidgetListener<FlowState<DataT>> listener,
    super.key,
    super.bloc,
    BlocBuilderCondition<FlowState<DataT>>? buildWhen,
    BlocListenerCondition<FlowState<DataT>>? listenWhen,
  }) : super(
         builder: builder,
         listener: listener,
         buildWhen: buildWhen,
         listenWhen: listenWhen,
       );

  factory FlowBlocConsumer.when({
    Key? key,
    BlocT? bloc,
    BlocWidgetBuilder<IdleState<DataT>>? idle,
    BlocWidgetBuilder<LoadingState<DataT>>? loading,
    BlocWidgetBuilder<LoadMoreState<DataT>>? loadMore,
    BlocWidgetBuilder<EmptyState<DataT>>? empty,
    BlocWidgetBuilder<DataState<DataT>>? data,
    BlocWidgetBuilder<ErrorState<DataT>>? error,
    BlocWidgetBuilder<FlowState<DataT>>? orElse,
    BlocBuilderCondition<FlowState<DataT>>? buildWhen,
    BlocWidgetListener<IdleState<DataT>>? onIdle,
    BlocWidgetListener<LoadingState<DataT>>? onLoading,
    BlocWidgetListener<LoadMoreState<DataT>>? onLoadMore,
    BlocWidgetListener<EmptyState<DataT>>? onEmpty,
    BlocWidgetListener<DataState<DataT>>? onData,
    BlocWidgetListener<ErrorState<DataT>>? onError,
    BlocWidgetListener<FlowState<DataT>>? onElse,
    BlocListenerCondition<FlowState<DataT>>? listenWhen,
  }) {
    return FlowBlocConsumer<BlocT, DataT>(
      key: key,
      bloc: bloc,
      builder: InteralFlowBlocBuilder.when(
        idle: idle,
        loading: loading,
        loadMore: loadMore,
        empty: empty,
        data: data,
        error: error,
        orElse: orElse,
      ),
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
