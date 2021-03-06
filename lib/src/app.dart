import 'package:flutter/material.dart';
import 'package:mynote/src/resources/login_page.dart';
//import 'package:mynote/src/blocs/auth_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// class MyApp extends InheritedWidget {
//   final AuthBloc authBloc;
//   final Widget child;
//   MyApp(this.authBloc, this.child) : super(child: child);

//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     return false;
//   }

//   static MyApp of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType(MyApp);
//   }
// }
