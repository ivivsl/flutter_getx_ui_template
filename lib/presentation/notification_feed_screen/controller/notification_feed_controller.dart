import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/notification_feed_screen/models/notification_feed_model.dart';

class NotificationFeedController extends GetxController {
  Rx<NotificationFeedModel> notificationFeedModelObj =
      NotificationFeedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
