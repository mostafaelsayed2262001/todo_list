import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_list/db/db_helper.dart';
import 'package:todo_list/services/notification_services.dart';

import 'package:todo_list/services/theme_services.dart';

import 'package:todo_list/ui/theme.dart';


import 'ui/pages/home_page.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  NotifyHelper().initializeNotification();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      home:  HomePage(),

    );
  }
}
