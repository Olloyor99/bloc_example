import 'package:dar24/src/data/bloc/my_navi_bloc.dart';
import 'package:dar24/src/models/auto_model.dart';
import 'package:dar24/src/retrofits/my_retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // AutoApi? user;
  // void initState() {
  //   getData();
  //   debugPrint(user.toString());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<MyNaviBloc>();
    return BlocBuilder<MyNaviBloc, MyNaviState>(builder: (context, state) {
      if (state is OkayBottom) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 250, 250),
              title: const Text(
                "Dars 24 Clean Code ",
                style: TextStyle(color: Colors.black),
              ),
              elevation: .3,
            ),
            backgroundColor: Colors.white,
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [],
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: state.okayIndex,
                onTap: (value) {
                  myBloc.add(ActivIndex(value));
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border), label: ''),
                ]));
      } else if (state is InitialState) {
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      } else {
        return const Text("sometin wrong");
      }
    });
  }

//   getData() async {
//     final client =
//         ApiManager(Dio(), baseUrl: 'https://gorest.co.in/public-api');
//     user = await client.getUSers();
//     setState(() {});
//     debugPrint(user!.meta!.pagination!.limit.toString());
//   }
 }

// @override
// Widget build(BuildContext context) {
//   final read = context.read<MyNaviBloc>();
//   return Scaffold(
//       appBar: AppBar(
//         title: Text("Dars 24 API with Retrofit"),
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: user != null
//           ? ListView.builder(
//               itemCount: (user!.data ?? []).length,
//               itemBuilder: ((context, index) {
//                 return ListTile(
//                   title: Text(user!.data![index].name.toString()),
//                 );
//               }))
//           : const Center(
//               child: CircularProgressIndicator(),
//             ),
//       bottomNavigationBar:
//           BlocBuilder<MyNaviBloc, MyNaviState>(builder: ((context, state) {
//         return Scaffold(
//     //     if(state is OkayBottom){
//     //     BottomNavigationBar(
//     //   backgroundColor: Colors.deepOrangeAccent,
//     //   selectedItemColor: Colors.white,
//     //   unselectedItemColor: Colors.black,
//     //   currentIndex: 1,
//     //   onTap: (value) {},
//     //   items: const [
//     //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
//     //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//     //     BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: ''),
//     //   ],
//     // );
//       //}
//         );
//       })));
// }
