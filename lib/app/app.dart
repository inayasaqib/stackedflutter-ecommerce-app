import 'package:ecommerce/ui/ScreenChange/screen2.dart';
import 'package:ecommerce/ui/ScreenChange/screen3.dart';
import 'package:ecommerce/ui/ScreenChange/screenchange_view.dart';
import 'package:ecommerce/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecommerce/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecommerce/ui/views/startup/Home/home_view.dart';
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/login.dart';
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/signup.dart';
import 'package:ecommerce/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: ScreenChangeView, initial: false),
    MaterialRoute(page: ScreenChangeone, initial: false),
    MaterialRoute(page: ScreenChangeTwo, initial: false),
    MaterialRoute(page: LoginView, initial: false),
    MaterialRoute(page: SignUpView, initial: false),
    MaterialRoute(page: HomeView, initial: false),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
