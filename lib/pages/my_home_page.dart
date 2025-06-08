import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/bloc/color_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc _bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc with Flutter_bloc"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(builder: (context, currentColor) => AnimatedContainer(duration: Duration(milliseconds: 300),
        width: 100,
        height: 100,
        color: currentColor,
        ),),
        
       
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(onPressed: () {
          _bloc.add(RedColorEvent());
        }, backgroundColor: Colors.red,),
        SizedBox(width: 10,),
        FloatingActionButton(onPressed: () {
          _bloc.add(GreenColorEvent());
        }, backgroundColor: Colors.green,),
      ],),
    );
  }
}