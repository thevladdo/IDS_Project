import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_chalet/Cubit/app_cubit_states.dart';
import 'package:smart_chalet/Cubit/app_cubits.dart';
import 'package:smart_chalet/Widget/loading_indicator.dart';
import '../Screens/Authenticated/home_page.dart';
import '../Screens/Non_Authenticated/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Build the logic with this: if the state is this -> show me that
      //BlocBuilder shold know the cubits
      body: BlocBuilder<AppCubits, CubitStates>(
          //Using this builder we can check on the states
          //It loops infinitly the states and when find a state, return it
          builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomePage();
        }
        if (state is LoadingState) {
          return const TriangleDotIndicator();
        }
        if (state is LoadedState) {
          return const HomePage(); //TODO attenzione, non lasciare HomePage() e non fare la chiamata per ombrelli
        } else {
          return const InkDropIndicator();
        }
      }),
    );
  }
}