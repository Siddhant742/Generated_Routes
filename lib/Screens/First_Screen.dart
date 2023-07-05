import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubits/FirstCubit.dart';
import 'package:generated_routes/Screens/Second_Screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        actions: [
          CupertinoButton(
              child: Icon(Icons.arrow_forward),
              onPressed: (){Navigator.pushNamed(context, '/second');})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<FirstCubit>(context).Increment();
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xffbaf697),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<FirstCubit, int>(
                builder: (BuildContext context, state) {
                  return Text(
                    state.toString(),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffbaf697),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
