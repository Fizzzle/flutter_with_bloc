import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/bloc/color_bloc.dart';
import 'package:flutter_with_bloc/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter With flutter_bloc',
      home: BlocProvider(create: (context) => ColorBloc(), child: MyHomePage()),
    );
  }
}

