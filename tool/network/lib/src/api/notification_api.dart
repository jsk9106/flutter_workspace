import 'package:core_network/network.dart';
import 'package:core_util/util.dart';

@lazySingleton
class NotificationApi {
  final RestClient _client;

  NotificationApi(this._client);

  Future<dynamic> getNotifications() {
    return _client
        .get<dynamic>('/notification-api/notifications')
        .then((value) => value.data);
  }

  Future<dynamic> test() {
    return _client
        .get<dynamic>(
          '/campaign/tnk/place_save?adid=${DateTime.now().millisecondsSinceEpoch}&cbid=${DateTime.now().millisecondsSinceEpoch * 2}_dfg}',
        )
        .then((value) => value.data);
    // return Future.value('test data');
  }
}
