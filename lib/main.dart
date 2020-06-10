import 'package:flutter/material.dart';
import 'package:minicipalite_app/models/user.dart';
import 'package:minicipalite_app/repositories/post_repository.dart';
import 'package:minicipalite_app/ui/router.dart';
import 'package:minicipalite_app/ui/screens/wrapper.dart';
import 'package:minicipalite_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:minicipalite_app/shared/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => locator<PostRepository>()),
      ],
      child: StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          title: 'Minicipalite App',
          theme: ThemeData(),
          onGenerateRoute: Router.generateRoute,
        ),
      ),
    );
  }
}

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}*/
