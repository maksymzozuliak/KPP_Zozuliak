import 'package:adopt_a_pet/ioc/bootstrapper.dart';
import 'package:adopt_a_pet/presentation/bloc/pet_screen_bloc.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bootstrapper.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PetScreenBloc>(
          create: (BuildContext context) => PetScreenBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: PetScreen(),
            backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
