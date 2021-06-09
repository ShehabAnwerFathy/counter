import 'package:counter/controller/state_management/counter/counter_cubit.dart';
import 'package:counter/controller/state_management/counter/counter_states.dart';
import 'package:counter/widget/increment_and_decrement_operator_buttons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:counter/controller/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);
  static const id = "counter_view";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, CounterStates state) {
          if(state is MinimumValueCounterStates){
            print("Shehab");
          }
        },
        builder: (BuildContext context, CounterStates state) {
          return Scaffold(
            appBar: NewGradientAppBar(
              centerTitle: true,
              title: const Text("Counter"),
              gradient: LinearGradient(
                colors: AppColors.gradientColorsList,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    CounterCubit.get(context).reInitialCounter();
                  },
                ),
              ],
            ),
            body: Center(
              child: Text(
                "${CounterCubit.get(context).counter}",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            floatingActionButton: const IncrementAndDecrementOperatorButtons(),
          );
        },
      ),
    );
  }
}
