import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/features/counter/presentation/cubit/counter_cubit.dart';
import 'package:my_app/features/counter/presentation/cubit/counter_state.dart';
import 'package:my_app/features/counter/presentation/widgets/skeleton_weather_info.dart';
import 'package:skeletons/skeletons.dart';



class CounterPage extends StatelessWidget {
    const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Weather counter",
            ),
          ),
          floatingActionButton: Wrap(
            direction: Axis.horizontal, 
            children: <Widget>[
              Visibility(
                visible: state.counterValue < 10,
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: () {
                        context.read<CounterCubit>().incrementCounter();
                      },
                      child: const Icon(Icons.add),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrementCounter();
                    },
                    backgroundColor: Colors.deepPurpleAccent,
                    child: const Icon(Icons.remove),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () async {
                      await context.read<CounterCubit>().getCurentWeather();
                    },
                    backgroundColor: Colors.deepOrangeAccent,
                    child: const Icon(Icons.cloud),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<CounterCubit>().setTheme();
                    },
                    backgroundColor: Colors.blue,
                    child: const Icon(Icons.theater_comedy),
                  )),
            ],
          ),
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Skeleton(
                    isLoading: state.isFetchingWeather,
                    skeleton: const SkeletonWeatherInfo(),
                    child: state.currentWeather != null
                        ? Column(
                            children: [
                              Text(
                                  "Weather for ${state.currentWeather!.location.country}, ${state.currentWeather!.location.name}"),
                              Text(
                                  "Temperature: ${state.currentWeather!.current.tempC} C"),
                              Text(
                                  "Wind: ${state.currentWeather!.current.windKph} km/h"),
                              Text(
                                  "Pressure: ${state.currentWeather!.current.pressureMb} mb"),
                            ],
                          )
                        : const SizedBox.shrink(),
                  ),
                  const Text("You have pushed button this many times:"),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text("${state.counterValue}",
                      style: Theme.of(context).textTheme.displaySmall)
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
