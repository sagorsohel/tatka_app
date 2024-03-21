import 'package:bloc/bloc.dart';
import 'package:bloc_ecommerce/app.dart';
import 'package:bloc_ecommerce/src/blocs/blocs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = EcommerceBlocObserver();
  runApp(const BlocEcommerceApp());
}
