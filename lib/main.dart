import 'package:basketball_point_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Points counter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).counterA}',
                          style: const TextStyle(
                            fontSize: 90,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'A', numberOfPoints: 1);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'A', numberOfPoints: 2);
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'A', numberOfPoints: 3);
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 300,
                      width: 3,
                      child: VerticalDivider(
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).counterB}',
                          style: const TextStyle(
                            fontSize: 90,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'B', numberOfPoints: 1);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'B', numberOfPoints: 2);
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fixedSize: const Size(140, 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increamentCounter(
                                    team: 'B', numberOfPoints: 3);
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  fixedSize: const Size(140, 20),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetting();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
