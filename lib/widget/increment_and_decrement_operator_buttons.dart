import 'package:counter/controller/state_management/counter/counter_cubit.dart';
import 'package:counter/controller/state_management/counter/counter_states.dart';
import 'package:counter/widget/gradient_floating_action_button.dart';
import 'package:counter/controller/assets/assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IncrementAndDecrementOperatorButtons extends StatelessWidget {
  const IncrementAndDecrementOperatorButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (BuildContext context, CounterStates state) {},
      builder: (BuildContext context, CounterStates state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientFloatingActionButton(
              heroTag: "Increase",
              onPressed: () {
                CounterCubit.get(context).increment();
              },
              child: SvgPicture.asset(
                Assets.images.add,
                width: 20.0,
                color: Colors.white,
              ),
            ),
            if (CounterCubit.get(context).canDecrease)
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: GradientFloatingActionButton(
                  heroTag: "Decrease",
                  onPressed: () {
                    CounterCubit.get(context).decrement();
                  },
                  child: SvgPicture.asset(
                    Assets.images.minus,
                    width: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
