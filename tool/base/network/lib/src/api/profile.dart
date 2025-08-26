import 'package:tool_fooponote_network/network.dart';

class ProfileApi {
  final FooponoteRestClient _client;

  const ProfileApi(this._client);

  Future<dynamic> getMy() {
    return _client.get<dynamic>('/profile-api/my').then((value) => value.data);
  }
}
