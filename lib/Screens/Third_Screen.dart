import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubits/ThirdCubit.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        actions: [
          CupertinoButton(
              child: Icon(Icons.arrow_forward),
              onPressed: (){Navigator.pushNamed(context, '/first');})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ThirdCubit>(context).Increment();
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xffbaf697),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<ThirdCubit, int>(
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
