import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/ui/views/CartScreen/cartscreenviewmodel.dart';
import 'package:ecommerce/ui/views/startup/startup_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/app/app.bottomsheets.dart';
import 'package:ecommerce/app/app.dialogs.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CartProvider(),
          )
        ],
        child: MaterialApp(
          home: const StartupView(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.startupView,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        ),
      );
}
