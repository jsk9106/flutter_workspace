import 'package:tool_base_network/network.dart';

class NotificationApi {
  final FRestClient _client;

  const NotificationApi(this._client);

  Future<dynamic> getNotifications() {
    return _client
        .get<dynamic>('/notification-api/notifications')
        .then((value) => value.data);
  }
}
