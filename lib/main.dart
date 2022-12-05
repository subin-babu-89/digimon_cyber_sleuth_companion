import 'package:digimon_cyber_sleuth_companion/src/monster_list/bloc/digimon_list_bloc.dart';
import 'package:digimon_cyber_sleuth_companion/src/monster_list/digital_monster_entity.dart';
import 'package:digimon_cyber_sleuth_companion/src/monster_list/monster_list_repository.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (BuildContext context) => MonsterListRepository(),
        child: BlocProvider(
          create: (BuildContext context) => DigimonListBloc(
              repository: context.read<MonsterListRepository>()),
          child: const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),

      // BlocProvider<DigimonListBloc>(
      //   create: (context) =>
      //       DigimonListBloc(repository: MonsterListRepository()),
      //   child: const MyHomePage(title: 'Flutter Demo Home Page'),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final digimonBloc = context.read<DigimonListBloc>();
    digimonBloc.add(DigimonListFetchEvent());
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: BlocBuilder<DigimonListBloc, DigimonListState>(
        builder: (context, state) {
          if (state is DigimonListLoaded) {
            final items = state.digimonNames;
            return ListView.builder(
              itemCount: items.length,
              prototypeItem: const ListTile(
                title: Text("Digimons"),
              ),
              itemBuilder: (context, index) => ListTile(
                title: Text(items[index]),
              ),
            );
          }
          return const Text(
            'You have pushed the button this many times:',
          );
        },
      )),
    );
  }
}
