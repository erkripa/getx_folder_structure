import 'package:demo/controllers/profile_page_controller.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/profile/profile_page.dart';
import 'package:demo/utils/app_routes_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String get getIntialPage => AppRoutesName.intialRoute;
  static String get getProfilePage => AppRoutesName.profilePageRoute;

  static List<GetPage> get routes => [
        GetPage(
          name: AppRoutesName.intialRoute,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppRoutesName.profilePageRoute,
          page: () => const ProfilePage(),
          binding: BindingsBuilder(
            () {
              Get.put(ProfilePageController());
            },
          ),
          transition: transition,
        )
      ];

  static Transition get transition => Transition.rightToLeft;
}
