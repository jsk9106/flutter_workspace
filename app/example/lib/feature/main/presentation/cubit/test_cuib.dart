import 'package:core_bloc/bloc.dart';
import 'package:core_util/util.dart';
import 'package:example/feature/main/domain/use_case/test_use_case.dart';

@injectable
class TestCuib extends FlowCubit<String> {
  TestCuib(this._testUseCase) : super(const IdleState());

  final TestUseCase _testUseCase;

  Future<void> test() async {
    emitLoading();

    try {
      final result = await _testUseCase.execute();
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
