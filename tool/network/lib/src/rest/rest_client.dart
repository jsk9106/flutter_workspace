import 'package:core_network/network.dart';
import 'package:core_util/util.dart';

@LazySingleton(as: RestClient)
class FRestClient extends RestClient {
  FRestClient() : super(baseUrl: 'http://127.0.0.1:8080');
}
