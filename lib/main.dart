// import 'package:flutter/material.dart';
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/aplication/product_bloc.dart';
import 'package:machine_test/presentation/home_screen.dart';

import 'domain/core/dipendency injection/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInj();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider( create: (context) => getIt<ProductBloc>(),)
        ],

        child: HomeScreen(),
      ),
    );
  }
}
