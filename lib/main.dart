import 'package:flutter/material.dart';
// import 'package:mynote/ui/views/note/note_view.dart';
import 'package:mynote/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mynote/src/blocs/auth_bloc.dart';
import 'package:mynote/src/resources/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// void main() {
//   runApp(MyApp(
//       new AuthBloc(),
//       MaterialApp(
//         home: LoginPage(),
//       )));
// }
