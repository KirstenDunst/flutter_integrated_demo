/*
 * @Author: Cao Shixin
 * @Date: 2019-12-17 17:40:32
 * @LastEditors: Cao Shixin
 * @LastEditTime: 2021-03-30 18:20:52
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:limiting_direction_csx/limiting_direction_csx.dart';
import 'widget/home_page.dart';
import 'widget/login_page.dart';
import 'widget/list_view_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LimitingDirectionCsx.setScreenDirection(DeviceDirectionMask.Landscape);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // 显示和隐藏
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "flutter_login": (_) => new LoginPage(),
        "flutter_listView": (_) => new ListViewPage()
      },
    );
  }
}
