import 'package:equatable/equatable.dart';

sealed class FlowState<DataT> extends Equatable {
  const FlowState({DataT? data}) : _data = data;

  final DataT? _data;

  DataT? get data => _data;

  bool get hasData => data != null;

  @override
  List<Object?> get props => [data];
}

final class IdleState<DataT> extends FlowState<DataT> {
  const IdleState({super.data});
}

final class LoadingState<DataT> extends FlowState<DataT> {
  const LoadingState({super.data});
}

final class LoadMoreState<DataT> extends FlowState<DataT> {
  const LoadMoreState({super.data});
}

final class EmptyState<DataT> extends FlowState<DataT> {
  const EmptyState({super.data});
}

final class DataState<DataT> extends FlowState<DataT> {
  const DataState({required super.data, this.updatedAt});

  @override
  DataT get data => super.data!;

  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
    data,
    if (updatedAt != null) updatedAt!.millisecondsSinceEpoch,
  ];
}

final class ErrorState<DataT> extends FlowState<DataT> {
  const ErrorState({super.data, this.error, this.stackTrace});

  final dynamic error;
  final StackTrace? stackTrace;

  bool get hasError => error != null;

  @override
  List<Object?> get props => [...super.props, error, stackTrace];
}
