import 'package:design_system/core/helpers/export_manager/export_manager.dart';
import 'package:design_system/core/routing/app_router.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await ScreenUtil.ensureScreenSize();

  runApp(
    DesignSystem(appRouter: AppRouters()),
  );
}
