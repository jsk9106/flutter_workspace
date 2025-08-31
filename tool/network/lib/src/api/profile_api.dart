import 'package:core_network/network.dart';
import 'package:core_util/util.dart';

@lazySingleton
class ProfileApi {
  final RestClient _client;

  ProfileApi(this._client);

  Future<dynamic> getMy() {
    return _client.get<dynamic>('/profile-api/my').then((value) => value.data);
  }
}
