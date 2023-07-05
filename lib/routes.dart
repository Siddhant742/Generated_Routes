
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubits/FirstCubit.dart';
import 'package:generated_routes/Screens/First_Screen.dart';

import 'Cubits/SecondCubit.dart';
import 'Cubits/ThirdCubit.dart';
import 'Screens/Second_Screen.dart';
import 'Screens/Third_Screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/first":
        return MaterialPageRoute(
            builder: (context) => BlocProvider<FirstCubit>(
                  create: (context) => FirstCubit(),
                  child: FirstScreen(),
                ));
      case "/second":
        return MaterialPageRoute(
            builder: (context) => BlocProvider<SecondCubit>(
              create: (context) => SecondCubit(),
              child: SecondScreen(),
            ));
      case "/third":
        return MaterialPageRoute(
            builder: (context) => BlocProvider<ThirdCubit>(
              create: (context) => ThirdCubit(),
              child: ThirdScreen(),
            ));
      default: return null;
    }
  }
}
