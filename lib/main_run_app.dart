import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mudent_app/app_wd.dart';

import 'core/core.dart';
import 'flavors.dart';

void mainRunApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.instance.init(F.appConfigEnv);

  runApp(const ProviderScope(child: AppWD()));
}
