import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/home/home_page.dart';
import 'features/insert/insert_page.dart';
import 'features/weight_height/weight_height_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<WeightHeightCubit>(
          create: (_) => WeightHeightCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'IMC App',
        initialRoute: '/home',
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomePage(),
          '/insert': (context) => InsertPage(),
        },
      ),
    );
  }
}
