import 'package:tool_base_network/network.dart';

class ProfileApi {
  final FRestClient _client;

  const ProfileApi(this._client);

  Future<dynamic> getMy() {
    return _client.get<dynamic>('/profile-api/my').then((value) => value.data);
  }
}
