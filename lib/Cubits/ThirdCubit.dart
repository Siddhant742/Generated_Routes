import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdCubit extends Cubit<int>{
  ThirdCubit(): super(0);
  void Increment()=>emit(state+1);
  void Decrement()=>emit(state-1);
}