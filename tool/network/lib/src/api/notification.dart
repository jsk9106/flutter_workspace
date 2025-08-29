import 'package:core_network/network.dart';

class NotificationApi {
  final RestClient _client;

  NotificationApi(this._client);

  Future<dynamic> getNotifications() {
    return _client
        .get<dynamic>('/notification-api/notifications')
        .then((value) => value.data);
  }

  Future<dynamic> test() {
    return Future.value('hi');
  }
}
