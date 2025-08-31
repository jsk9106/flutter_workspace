import 'package:core_bloc/bloc.dart';
import 'package:core_util/util.dart';
import 'package:feature_test/src/domain/usecases/test_use_case.dart';

@injectable
class TestCuib extends FlowCubit<String> {
  TestCuib(this._testUseCase) : super(const IdleState());

  final TestUseCase _testUseCase;

  Future<void> test() async {
    emitLoading();

    final result = await _testUseCase.execute();
    result.fold((l) => emitError(l), (r) => emitData(r));
  }
}
