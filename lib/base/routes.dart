import 'package:get/get.dart';
import '../ui/collection/collection_screen.dart';
import '../ui/login/login_controller.dart';
import '../ui/login/login_screen.dart';
import '../ui/main/main_controller.dart';
import '../ui/main/main_screen.dart';
import '../ui/post/post_screen.dart';
import '../ui/profile/profile_screen.dart';
import '../ui/settings/settings_screen.dart';
import 'remote/api_service.dart';
import 'strings.dart';

List<GetPage> mainRoutes = [
  GetPage(
    name: Strings.loginRoute,
    page: () => const LoginScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => ApiService());
      },
    ),
  ),
  GetPage(
    name: Strings.mainRoute,
    page: () => const MainScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyPut(() => MainController());
        Get.lazyPut(() => ApiService());
      },
    ),
  ),
  GetPage(
    name: Strings.postRoute,
    page: () => const PostScreen(),
  ),
  GetPage(
    name: Strings.collectionRoute,
    page: () => const CollectionScreen(),
  ),
  GetPage(
    name: Strings.profileRoute,
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: Strings.settingsRoute,
    page: () => const SettingsScreen(),
  ),
];
